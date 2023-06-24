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
      <el-table-column prop="username" label="姓名" align="center"></el-table-column>
      <el-table-column prop="applicationId" label="申请ID" align="center"></el-table-column>
      <el-table-column prop="contractAmount" label="合同金额" align="center"></el-table-column>
      <el-table-column prop="contractTerm" label="合同期限" align="center"></el-table-column>
      <el-table-column prop="repaymentSchedule" label="还款计划" align="center"></el-table-column>
      <el-table-column prop="signingDate" label="签订日期" align="center"></el-table-column>
      <el-table-column prop="status" label="状态" align="center"></el-table-column>
      <el-table-column prop="applicationDate" label="申请日期" align="center"></el-table-column>
      <el-table-column prop="loanAmount" label="贷款金额" align="center"></el-table-column>
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

    <el-dialog title="更新用户" :visible.sync="dialogFormVisible" :closed="closed()">
      <el-form :model="cloneObj">
        <el-form-item label="合同金额" :label-width="formLabelWidth">
          <el-input v-model="cloneObj.contractAmount" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="合同期限" :label-width="formLabelWidth">
          <el-date-picker
          v-model="cloneObj.contractTerm"
          type="date"
          placeholder="选择日期">
          </el-date-picker>
          <!-- <el-input v-model="cloneObj.contractTerm" autocomplete="off"></el-input> -->
        </el-form-item>
        <el-form-item label="还款计划" :label-width="formLabelWidth">
          <el-input v-model="cloneObj.repaymentSchedule" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="签订日期" :label-width="formLabelWidth">
          <el-date-picker
          v-model="cloneObj.signingDate"
          type="date"
          placeholder="选择日期">
          </el-date-picker>
          <!-- <el-input v-model="cloneObj.signingDate" autocomplete="off"></el-input> -->
        </el-form-item>
        <el-form-item label="用户编号" :label-width="formLabelWidth">
          <el-input v-model="cloneObj.userId" autocomplete="off"></el-input>
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
  getLoanContractById,
  createLoanContract,
  updateLoanContract,
  deleteLoanContract,
  getLoanContract,
  getTotal
} from "../../api/LoanContracts";
import _ from "lodash";
import moment from 'moment'
export default {
  data() {
    return {
      searchKeyword: "",
      tableData: [],
      currentPage: 1,
      pageSize: 10,
      total: 0,
      dialogFormVisible: false,
      formLabelWidth: "120px",
      cloneObj: {
        username: "",
        email: "",
        password: "",
        phoneNumber: "",
      },
    };
  },
  methods: {
    async search() {
      // 发起搜索请求，根据搜索关键字获取数据
      const data = await getLoanContract(this.params);
      const total = await getTotal(this.params)
      this.tableData = data.data;
      this.total = Number(total.data[0].total)
    },
    edit(row) {
      console.log(row);
      this.cloneObj = _.cloneDeep(row || {});
      console.log(this.cloneObj);
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
      await deleteLoanContract(row.id);
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
    loadData() {
      // // 根据当前页码和每页显示数量获取数据
      // axios
      //   .get('/api/data', { params: { page: this.currentPage, pageSize: this.pageSize } })
      //   .then((response) => {
      //     this.tableData = response.data.items;
      //     this.totalItems = response.data.totalItems;
      //   })
      //   .catch((error) => {
      //     console.error(error);
      //   });
    },
    async submit() {
      this.dialogFormVisible = false;
      this.cloneObj.signingDate = moment(this.cloneObj.signingDate).format("YYYY-MM-DD")
      this.cloneObj.contractTerm = moment(this.cloneObj.contractTerm).format("YYYY-MM-DD")

      if (this.cloneObj.id) {
        await updateLoanContract(this.cloneObj.id, this.cloneObj);
      } else {
        await createLoanContract(this.cloneObj);
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
    currData() {
      return this.tableData.filter((item) => {
        return item.username.match(this.searchKeyword);
      });
    },
    totalItems() {
      return this.currData.length;
    },
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
