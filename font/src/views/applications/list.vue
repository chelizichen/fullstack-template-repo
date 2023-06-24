<template>
  <div>
    <el-form :inline="true" class="search-form">
      <el-form-item>
        <el-input v-model="searchKeyword" placeholder="请输入关键字" clearable></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="search">搜索</el-button>
      </el-form-item>
      <el-form-item>
        <el-button type="success" @click="edit()">添加</el-button>
      </el-form-item>
    </el-form>

    <el-table :data="tableData" style="width: 100%" border>
      <el-table-column type="index" label="序号" align="center"></el-table-column>
      <el-table-column prop="id" label="申请ID" align="center"></el-table-column>
      <el-table-column prop="username" label="申请人" align="center"></el-table-column>
      <el-table-column prop="userId" label="用户ID" align="center"></el-table-column>
      <el-table-column prop="loanAmount" label="贷款金额" align="center"></el-table-column>
      <el-table-column prop="status" label="状态" align="center">
        <template slot-scope="scope">
          <span v-if="scope.row.status == 0">未解决</span>
          <span v-if="scope.row.status == 1">待审核</span>
          <span v-if="scope.row.status == 2">已通过</span>
        </template>
      </el-table-column>
      <el-table-column prop="loanInterestRate" label="贷款利率" align="center"></el-table-column>
      <el-table-column prop="loanTerm" label="贷款期限" align="center"></el-table-column>
      <el-table-column prop="applicationDate" label="申请日期" align="center"></el-table-column>
      <el-table-column prop="username" label="申请人" align="center"></el-table-column>
      <!-- 其他表格列 -->

      <el-table-column label="操作" align="center" fixed="right">
        <template slot-scope="scope">
          <el-button size="mini" @click="edit(scope.row)">编辑</el-button>
          <el-button size="mini" type="danger" @click="deleteItem(scope.row)"
            >删除</el-button
          >
        </template>
      </el-table-column>
    </el-table>

    <el-pagination
      @size-change="handleSizeChange"
      @current-change="handleCurrentChange"
      :current-page="currentPage"
      :page-sizes="[10, 20, 30, 40]"
      :page-size="pageSize"
      layout="total, sizes, prev, pager, next, jumper"
      :total="total"
    ></el-pagination>

    <el-dialog title="更新申请" :visible.sync="dialogFormVisible" :closed="closed()">
      <el-form :model="cloneObj">
        <el-form-item label="申请日期" :label-width="formLabelWidth">
          <el-date-picker
          v-model="cloneObj.applicationDate"
          type="date"
          placeholder="选择日期">
          </el-date-picker>
          <!-- <el-input v-model="cloneObj.applicationDate" autocomplete="off"></el-input> -->
        </el-form-item>
        <el-form-item label="申请金额" :label-width="formLabelWidth">
          <el-input v-model="cloneObj.loanAmount" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="申请费率" :label-width="formLabelWidth">
          <el-input v-model="cloneObj.loanInterestRate" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="合同期限" :label-width="formLabelWidth">
          <el-date-picker
          v-model="cloneObj.loanTerm"
          type="date"
          placeholder="选择日期">
          </el-date-picker>

          <!-- <el-input v-model="cloneObj.loanTerm" autocomplete="off"></el-input> -->
        </el-form-item>
        <el-form-item label="状态" :label-width="formLabelWidth">
          <el-select v-model="cloneObj.status" placeholder="请选择">
            <el-option
              v-for="item in options"
              :key="item.value"
              :label="item.label"
              :value="item.value"
              :disabled="item.disabled">
            </el-option>
          </el-select>

          <!-- <el-input v-model="cloneObj.status" autocomplete="off"></el-input> -->
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="submit()">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  getLoanApplicationList,
  createLoanApplication,
  deleteLoanApplication,
  updateLoanApplication,
  getTotal
} from "../../api/LoanApplications";
import _ from "lodash";
import moment from 'moment'
export default {
  data() {
    return {
      searchKeyword: "",
      tableData: [],
      currentPage: 1,
      pageSize: 10,
      total:0,
      // totalItems: 0,
      dialogFormVisible: false,
      formLabelWidth: "120px",
      cloneObj: {
        username: "",
        email: "",
        password: "",
        phoneNumber: "",
      },
      options: [{
          value: '0',
          label: '未解决'
        }, {
          value: '1',
          label: '待审核',
        }, {
          value: '2',
          label: '已通过'
        }],
    };
  },
  methods: {
    async search() {
      // 发起搜索请求，根据搜索关键字获取数据
      const data = await getLoanApplicationList(this.params);
      const total = await getTotal(this.params)
      this.tableData = data.data;
      this.total = Number(total.data[0].total)
    },
    edit(row) {
      console.log(row);
      this.cloneObj = _.cloneDeep(row || {});
      this.dialogFormVisible = true;
      // 编辑某一行数据
      // ...
    },
    closed() {
      for(let v in this.cloneObj){
          this.cloneObj[v] = ''
      }
    },
    async deleteItem(row) {
      await deleteLoanApplication(row.id);
      this.$message({
        type: "success",
        message: "删除成功",
      });
      this.search();
      console.log(row);
      // 删除某一行数据
      // ...
    },
    handleSizeChange(pageSize) {
      this.pageSize = pageSize;
      this.search();
    },
    handleCurrentChange(currentPage) {
      this.currentPage = currentPage;
      this.search();
    },
    async submit() {
      this.dialogFormVisible = false;
      this.cloneObj.applicationDate = moment(this.cloneObj.applicationDate).format("YYYY-MM-DD")
      this.cloneObj.loanTerm = moment(this.cloneObj.loanTerm).format("YYYY-MM-DD")
      if (this.cloneObj.id) {
        await updateLoanApplication(this.cloneObj.id, this.cloneObj);
      } else {
        await createLoanApplication(this.cloneObj);
      }
      await this.search();
      this.$message({
        type: "success",
        message: "更新成功",
      });
    },
  },
  created() {
    this.search();
  },
  computed: {
    params(){
      const _params = {
        keyword:"%"+this.searchKeyword+"%",
        offset:(this.currentPage-1)*this.pageSize,
        size:this.pageSize
      }
      return _params
    }
  },
};
</script>

<style>
.search-form {
  margin-bottom: 20px;
}
</style>
