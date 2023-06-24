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
        <el-table-column prop="repaymentAmount" label="还款金额" align="center"></el-table-column>
        <el-table-column prop="repaymentDate" label="还款日期" align="center"></el-table-column>
        <el-table-column prop="repaymentMethod" label="还款方式" align="center"></el-table-column>
        <el-table-column prop="contractId" label="合同ID" align="center"></el-table-column>
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
  
      <el-dialog title="还款更新" :visible.sync="dialogFormVisible" :closed="closed()">
        <el-form :model="cloneObj">
          <el-form-item label="还款金额" :label-width="formLabelWidth">
            <el-input v-model="cloneObj.repaymentAmount" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="还款日期" :label-width="formLabelWidth">
            <el-date-picker
            v-model="cloneObj.repaymentDate"
            type="date"
            placeholder="选择日期">
          </el-date-picker>
          </el-form-item>
          <el-form-item label="还款方式" :label-width="formLabelWidth">
            <el-input v-model="cloneObj.repaymentMethod" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="用户编号" :label-width="formLabelWidth">
            <el-input  v-model="cloneObj.userId" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="合同编号" :label-width="formLabelWidth">
            <el-input  v-model="cloneObj.contractId" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="申请人" :label-width="formLabelWidth">
            <el-input :disabled="true" v-model="cloneObj.username" autocomplete="off"></el-input>
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
    getRepaymentRecord,
    createRepaymentRecord,
    updateRepaymentRecord,
    deleteRepaymentRecord,
    getTotal
  } from "../../api/RepaymentRecords";
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
        const data = await getRepaymentRecord(this.params);
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
        await deleteRepaymentRecord(row.id);
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
        this.cloneObj.repaymentDate = moment(this.cloneObj.repaymentDate).format("YYYY-MM-DD")
        if (this.cloneObj.id) {
          await updateRepaymentRecord(this.cloneObj.id, this.cloneObj);
        } else {
          await createRepaymentRecord(this.cloneObj);
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
  