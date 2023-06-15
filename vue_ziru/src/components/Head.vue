<template>
    <div style="line-height: 60px; display: flex;text-align: right;" >
      <div style="flex: 4;">
        <el-breadcrumb separator="/" style="display: inline-block; margin-left: 10px">
          <el-breadcrumb-item :to="'/index'">首页</el-breadcrumb-item>
          <!-- <el-breadcrumb-item>{{this.$route.name}}</el-breadcrumb-item> -->
        </el-breadcrumb>
      </div>
    </div>
  </template>
  
  <script>
  import axios from "axios";
  
  export default {
    name: "Header",
    props: {
      collapseBtnClass: String,
      collapse: "",
    },
    data(){
      return{
        token:'',
        name:'',
        imageUrl: ''
      }
    },
    created() {
      this.token = localStorage.getItem("token")
      console.log(this.token)
      this.load()
    },
    methods:{
      changeCollapse(){
        this.$store.commit("change")
      },
      exit(){
        this.$route.push({path:'/'})
        console.log("exit")
      },
      handleCommand(command) {
        // if(command=='a'){
        //   console.log("个人信息")
        // }
        // else{
          this.$message.success("退出成功");
          this.$router.push({path:'/login'})
        // }
      },
      load(){
        // axios.get("http://localhost:9090/user/findUserId/", {headers:{
        //     'Content-Type':"application/json;charset=UTF-8",
        //     'Authorization': this.token
        //   }})
        //     .then(res => {
        //       this.name = res.data
        //       if(!this.name){
        //         this.$message.success("请先登录");
        //         this.$router.push({path:'/login'})
        //       }
        //     });
      },
      handleAvatarSuccess(res, file) {
        this.imageUrl = URL.createObjectURL(file.raw);
      },
      beforeAvatarUpload(file) {
        const isJPG = file.type === 'image/jpeg';
        const isLt2M = file.size / 1024 / 1024 < 2;
  
        if (!isJPG) {
          this.$message.error('上传头像图片只能是 JPG 格式!');
        }
        if (!isLt2M) {
          this.$message.error('上传头像图片大小不能超过 2MB!');
        }
        return isJPG && isLt2M;
      }
    }
  
  
  }
  </script>
  
  <style scoped>
  
  </style>