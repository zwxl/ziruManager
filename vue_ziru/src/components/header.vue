<template>
  <div>
    <div ref="viewBox" class="header1" :class="headerFlag ? '' : 'a1'">
      <div class="header_xx">
        <h1 class="header_logo">
          <img
            v-if="headerFlag1"
            src="../assets/自如_slices/自如logo@2x.png"
            alt=""
          />
          <img v-else src="../assets/租房/自如logo@2x.png" alt="" />
        </h1>
        <div class="header_city">
          <el-dropdown>
            <a class="header_city_title"> 武汉 </a>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item>北京</el-dropdown-item>
              <el-dropdown-item>上海</el-dropdown-item>
              <el-dropdown-item>深圳</el-dropdown-item>
              <el-dropdown-item>杭州</el-dropdown-item>
              <el-dropdown-item>南京</el-dropdown-item>
              <el-dropdown-item>成都</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </div>
        <ul class="header_nav">
          <li><router-link to="/">首页</router-link></li>
          <li><router-link to="/zufang">租房</router-link></li>
          <li><router-link to="#">自如寓</router-link></li>
          <li><router-link to="#">自如驿</router-link></li>
          <li><router-link to="#">服务</router-link></li>
          <li><router-link to="#">生活</router-link></li>
          <li><router-link to="#">加入我们</router-link></li>
          <li><router-link to="#">APP下载</router-link></li>
          <li>
            <router-link to="#" class="header_nav_last">成为房东</router-link>
          </li>
          <li><router-link to="/login">登录</router-link></li>
          <li><a class="sp">|</a></li>
          <li><router-link to="/userManager">管理</router-link></li>
        </ul>
        <!-- <div v-if="yhmflag" class="header_top">
          <a @click.prevent="dldd" to="/login">登录</a>
          <a class="sp">|</a>
          <a @click.prevent="zcdd" to="/login">注册</a>
        </div>
        <div v-else class="header_yhm"> -->
          <!-- <a class="header_yhm_a1">123123123</a>
          <a class="header_yhm_a2" @click="scdl">退出</a>
        </div> -->
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "header1",
  props: {
    headerFlag: {
      type: Boolean,
      default: 0,
    },
  },
  data() {
    return {
      yhmflag: true,
      dlflag: false,
      zcflag: false,
      headerFlag1: this.headerFlag,
    };
  },
  mounted() {
    var that = this;
    //监听滚轮滚动事件
    window.document.body.onscroll = () => {
      if (document.documentElement.scrollTop > 0) {
        this.$refs.viewBox.style.background = "#fff";
        var oLis = this.$refs.viewBox.getElementsByTagName("a");
        for (var i = 0; i < oLis.length; i++) {
          oLis[i].style.color = "#000";
        }
        that.headerFlag1 = false;
      } else {
        if (this.headerFlag == true) {
          this.$refs.viewBox.style.background = "transparent";
          var oLis = this.$refs.viewBox.getElementsByTagName("a");
          for (var i = 0; i < oLis.length; i++) {
            oLis[i].style.color = "#fff";
          }
          that.headerFlag1 = true;
        }
      }
    };
  },

  created() {
    this.$nextTick(() => {
      this.yz();
    });
  },
  methods: {
    scdl() {
      //清楚全部数据
      window.localStorage.clear();
      // 刷新页面
      location.reload();
    },
    yz() {
      if (localStorage.getItem("") === "111") {
        this.yhmflag = false;
      }
    },
    denglucg() {
      this.yhmflag = false;
      this.dlflag = false;
      this.zxflag = false;
    },
    zccg() {
      this.zcflag = false;
    },
    dldd() {
      this.dlflag = true;
    },
    zcdd() {
      this.zcflag = true;
    },
    zcxx(id) {
      // console.log(id);
      this.zcflag = id;
    },
    dlxx(id) {
      // console.log(id);
      this.dlflag = id;
    },
  },
  components: {
    // "v-zc": zc,
    // "v-dl": dl,
  },
};
</script>

<style lang="scss" scoped>
.a1 {
  a {
    color: #000;
  }
}
.header1 {
  width: 100vw;
  height: 60px;
  position: fixed;
  top: 0;
  z-index: 30;
  border-bottom: 1px solid #01010120;
  .header_xx {
    width: 1152px;
    height: 60px;
    //background: pink;
    margin: 0 auto;
    text-align: center;
    color: #fff;
    .header_logo {
      float: left;
      margin: 0;
      height: 100%;
      width: 160px;
      padding: 14px 0;
      img {
        width: 147px;
        height: 27px;
      }
    }
    .header_city {
      float: left;
      line-height: 25px;
      width: 92px;
      height: 60px;
      padding-top: 16px;
      .header_city_title {
        padding: 0 10px 0 8px;
        font-size: 12px;
        border-radius: 20px;
        border: 1px solid #50575b;
      }
    }
    .header_nav {
      text-align: right;
      float: left;
      width: 760px;
      font-size: 0;
      height: 60px;
      li {
        display: inline-block;
        line-height: 60px;
        font-size: 15px;
        a {
          margin-right: 20px;
          font-size: 15px;
          padding: 9px 0;
        }
        a:hover {
          border-bottom: 2px solid orange;
        }
        .header_nav_last {
          font-size: 15px;
          padding: 6px 14px;
          position: relative;
          border: 1px solid #fff;
          border-radius: 2px;
          text-align: center;
        }
      }
    }
    .header_top {
      width: 140px;
      float: right;
      height: 100%;
      font-size: 15px;
      text-align: right;
      line-height: 60px;
      margin-top: -60px;
      .sp {
        display: inline-block;
        margin: 0 10px;
      }
    }
    .header_yhm {
      width: 140px;
      float: left;
      height: 60px;
      text-align: right;
      line-height: 60px;
      .header_yhm_a1 {
        width: 68px;
        height: 60px;
        margin-right: 10px;
        margin-left: 10px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;

        display: block;
        float: left;
        text-align: center;
        color: #fff;
      }
      .header_yhm_a2 {
        display: inline-block;
        margin: 0 10px;
      }
    }
  }
}
</style>