<template>
    <div class="login">
        <el-card class="login-card">
          <div class="login-form">
            <h3 class="login-title">欢迎登录管理平台</h3>
            <el-form :model="loginForm" label-width="0px" size="medium">
              <el-form-item>
                <el-input v-model="loginForm.username" placeholder="用户名"></el-input>
              </el-form-item>
              <el-form-item>
                <el-input v-model="loginForm.password" type="password" placeholder="请输入密码"></el-input>
              </el-form-item>
              <el-form-item>
                <el-button type="primary" @click="login">登录</el-button>
                <el-button type="success" @click="register">注册</el-button>
    
              </el-form-item>
            </el-form>
          </div>
        </el-card>
      </div>
  </template>
  
  <script>
  import { Login } from "@/api/Users";
  export default {
    name: "LoginBox",
    data() {
      return {
        isLogin: false,
        loginForm: {
          username: "",
          password: "",
        },
        registerForm: {
          name: "",
          email: "",
          password: "",
        },
        height: "",
      };
    },
    mounted() {
      console.log(window);
    },
    methods: {
      async login() {
        const data = await Login(this.loginForm);
        if (data) {
          this.$message({
			 type:"success",
            title: "登陆成功",
            message: "登陆成功",
          });
  
        this.$router.push("/admin/user")
        }else{
          this.$message({
			 type:"error",
            title: "登陆失败",
            message:"请检查用户名和密码是否正确"
          }); 
        }
      },
      register() {
        console.log(22);
      },
    },
  };
  </script>
  
  <style scoped>
 .login {
   background-color: #F0F2F5;
   display: flex;
   justify-content: center;
   align-items: center;
   height: 100vh;
 }
 
 .login-card {
   width: 400px;
 }
 
 .login-form {
   padding: 20px;
 }
 
 .login-title {
   text-align: center;
   margin-bottom: 20px;
 }
  </style>