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
            <el-button type="success" @click="edit">添加</el-button>
          </el-form-item>
      </el-form>
  
      <el-table :data="currData" style="width: 100%">
        <el-table-column prop="username" label="姓名"></el-table-column>
        <el-table-column prop="email" label="电子邮箱"></el-table-column>
        <el-table-column prop="password" label="密码"></el-table-column>
        <el-table-column prop="phoneNumber" label="电话"></el-table-column>
        <!-- 其他表格列 -->
  
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button size="mini" @click="edit(scope.row)">编辑</el-button>
            <el-button size="mini" type="danger" @click="deleteItem(scope.row)">删除</el-button>
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
        :total="totalItems"
      ></el-pagination>

      <el-dialog title="更新用户" :visible.sync="dialogFormVisible" :closed="closed()">
        <el-form :model="cloneObj">
          <el-form-item label="姓名" :label-width="formLabelWidth">
            <el-input v-model="cloneObj.username" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="电子邮箱" :label-width="formLabelWidth">
            <el-input v-model="cloneObj.email" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="密码" :label-width="formLabelWidth">
            <el-input v-model="cloneObj.password" autocomplete="off"></el-input>
          </el-form-item>
          <el-form-item label="电话" :label-width="formLabelWidth">
            <el-input v-model="cloneObj.phoneNumber" autocomplete="off"></el-input>
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
  import {getUserList,updateUser,createUser,deleteUser} from '@/api/Users'
  import _ from 'lodash'
  export default {
    data() {
      return {
        searchKeyword: '',
        tableData: [],
        currentPage: 1,
        pageSize: 10,
        // totalItems: 0,
        dialogFormVisible:false,
        formLabelWidth: '120px',
        cloneObj:{
            username:'',
            email:'',
            password:'',
            phoneNumber:'',
        }
      };
    },
    methods: {
      async search() {
        // 发起搜索请求，根据搜索关键字获取数据
        const data = await getUserList()
        this.tableData = data.data;
      },
      edit(row) {
        console.log(row);
        this.cloneObj = _.cloneDeep(row)
        console.log(this.cloneObj);
        this.dialogFormVisible = true
        // 编辑某一行数据
        // ...
      },
      closed(){
        // for(let v in this.cloneObj){
        //     this.cloneObj[v] = ''
        // }
      },
      async deleteItem(row) {
		  await deleteUser(row.id)
		this.$message({
			type:"success",
			message:"删除成功"
		})
		this.search();
        console.log(row);
        // 删除某一行数据
        // ...
      },
      handleSizeChange(pageSize) {
        this.pageSize = pageSize;
        this.loadData();
      },
      handleCurrentChange(currentPage) {
        this.currentPage = currentPage;
        this.loadData();
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
      async submit(){
        this.dialogFormVisible = false
        if(this.cloneObj.id){
            await updateUser(this.cloneObj.id,this.cloneObj)
        }else{
            await createUser(this.cloneObj)
        }
        await this.search()
        this.$message({
          type:"success",
          message:"更新成功"
        })
      }
    },
    created() {
      this.search();
    },
	computed:{
		currData(){
			return this.tableData.filter(item=>{
				return item.username.match(this.searchKeyword)
			})
		},
		totalItems(){
			return this.currData.length
		}
	}
  };
  </script>
  
  <style>
  .search-form {
    margin-bottom: 20px;
  }
  </style>
  