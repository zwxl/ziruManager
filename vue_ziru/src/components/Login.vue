<template>
    <div class="content" >
        <div class="demo-ruleForm login-container">
            <el-form v-if="flag" :model="ruleForm2" :rules="rules2" ref="ruleForm2" label-position="left" label-width="0px" >
                <div style="    position: absolute;top: -47%;left: 20%;">
                    <img style="width:100%;height:100%" v-show="img1" src="../assets/100.png"/>
                    <img style="width:100%;height:100%" v-show="img2" src="../assets/101.png"/>
                    <img style="width:100%;height:100%" v-show="img3" src="../assets/102.png"/>
                </div>
                <h3 class="title">系统登录</h3>
                <el-form-item prop="account">
                <el-input type="text" @focus="img2=true;img1=false;img3=false;" @blur="img1=true;img2=false;" v-model="ruleForm2.account" auto-complete="off" placeholder="账号"></el-input>
                </el-form-item>
                <el-form-item prop="checkPass">
                <el-input type="password" @focus="img3=true;img1=false;img2=false;" @blur="img1=true;img3=false;" v-model="ruleForm2.checkPass" auto-complete="off" placeholder="密码"></el-input>
                </el-form-item>
                <el-row type="flex" style="margin-bottom:22px;" class="row-bg" justify="space-between">
                    <el-col :span="6"><el-checkbox v-model="checked" checked >记住密码</el-checkbox></el-col>
                    <el-col :span="4"><el-button @click="flag=false" type="text" style="padding:0;">用户注册</el-button></el-col>
                </el-row>
                <el-form-item style="width:100%;">
                <el-button type="primary" style="width:100%;" @click.native.prevent="handleSubmit2" :loading="logining">登录</el-button>
                </el-form-item>
            </el-form>
            <el-form v-else :model="ruleForm3" :rules="rules2" ref="ruleForm3" label-position="left" label-width="0px" >
                <h3 class="title">系统注册</h3>
                <el-form-item prop="account">
                <el-input type="text"  v-model="ruleForm3.account" auto-complete="off" placeholder="账号"></el-input>
                </el-form-item>
                <el-form-item prop="checkPass">
                <el-input type="password" v-model="ruleForm3.checkPass" auto-complete="off" placeholder="密码"></el-input>
                </el-form-item>
                <el-row type="flex" style="margin-bottom:22px;" class="row-bg" justify="space-between">
                    <el-col :span="5"></el-col>
                    <el-col :span="8"><el-button @click="flag=true" type="text" style="padding:0;">使用已有账户登录</el-button></el-col>
                </el-row>
                <el-form-item style="width:100%;">
                <el-button type="primary" style="width:100%;" @click.native.prevent="handleregister" :loading="logining">注册</el-button>
                </el-form-item>
            </el-form>
        </div>
        
    </div>
    
</template>

<script>
import axios from 'axios';

  export default {
    data() {
      return {
        img1:true,
        img2:false,
        img3:false,
        flag:true,
        logining: false,
        ruleForm2: {
          account: '',
          checkPass: ''
        },
        ruleForm3: {
          account: '',
          checkPass: ''
        },
        rules2: {
          account: [
            { required: true, message: '请输入账号', trigger: 'blur' },
          ],
          checkPass: [
            { required: true, message: '请输入密码', trigger: 'blur' },
          ]
        },
        checked: true
      };
    },
    methods: {
      handleSubmit2() {
        let _this = this
        this.$refs.ruleForm2.validate((valid) => {
          if (valid) {
            localStorage.setItem("name",this.ruleForm2.account)
            this.logining = true;
            var loginParams = { uname: this.ruleForm2.account, password: this.ruleForm2.checkPass };
           axios.post('http://localhost:8081/ssmZiRu/login',loginParams).then(function (response) {
            console.log("dafs"+_this.ruleForm3.account+"dfd");
                if(response.data){
                    _this.$message({
                    message: "登录成功",
                    type:'success'
                });
                // localStorage.setItem("name",_this.loginParams.uname)
                _this.$router.push('/index')
                }else{
                    
                    _this.$message({message:"账号或密码错误",type:'error'})
                }
                _this.logining = false;
            }).catch(function (error) {
                console.log(error);
            });
          } else {
            console.log('error submit!!');
            return false;
          }
        });
      },
      handleregister(){
        let _this = this
        this.$refs.ruleForm3.validate((valid) => {
          if (valid) {
            this.logining = true;
            var loginParams = { uname: this.ruleForm3.account, password: this.ruleForm3.checkPass };
            axios.post('http://localhost:8081/ssmZiRu/register',loginParams).then(function (response) {
              console.log(response.data);
                if(response.data){
                    _this.$message({
                    message: "注册成功",
                    type:'success'
                });
                _this.$router.push('/login')
                }else{
                    
                    _this.$message({message:"账号已经存在",type:'error'})
                }
                _this.logining = false;
            }).catch(function (error) {
                console.log(error);
            });
          } else {
            console.log('error submit!!');
            return false;
          }
        });
      }
    }
  }

</script>

<style lang="scss" scoped>
  .content{
    background-image: url(https://gw.alipayobjects.com/zos/rmsportal/TVYTbAXWheQpRcWDaDMu.svg);
    background-repeat: no-repeat;
    background-position: center 110px;
    background-size: 100%;
    width: 100%;
    height: 100%;
  }
  .login-container {
    position: relative;
    top: 240px;
    border-radius: 5px;
    background-clip: padding-box;
    margin: 0 auto 0;
    width: 350px;
    padding: 35px 35px 15px 35px;
    background: #fff;
    border: 1px solid #eaeaea;
    box-shadow: 0 0 25px #cac6c6;
    .title {
      margin: 0px auto 40px auto;
      text-align: center;
      color: #505458;
    }
  }
</style>