<template>
  <div>
    <!-- 头部内容 -->
    <div class="Z_overlay">
      <img src="../assets/自如_slices/图层 36@2x.png" alt="" />
      <div class="Z_search_wrapper">
        <!-- 标题部分 -->
        <div class="Z_banner_tbox">
          <h1>品质租房选自如</h1>
          <p>10年,10城,近50万业主、500万自如客的选择</p>
        </div>
        <!-- 搜索 -->
        <div class="Z_search_box">
          <ul>
            <li
              v-for="(item, index) in ss"
              :key="index"
              :class="ssnr == index ? 'active' : ''"
              @click="bh(index)"
            >
              {{ item }}
              <i :style="{ left: xb[index] + 'px' }"></i>
            </li>
          </ul>
          <div class="Z_search_main">
            <input
              :placeholder="
                ipt
                  ? '请输入区域、地铁站、小区名字开始找房'
                  : '自如曼舍引领高端租住领域'
              "
              type="text"
              name=""
              id=""
            />
            <a href=""
              ><i class="z-i"></i>
              <img src="../assets/自如_slices/定位@2x.png" alt="" />地图找房</a
            >
            <router-link class="Z_search_submit" tag="a" to="/zufang"
              ><i class="z-i"></i>开始找房</router-link
            >
          </div>
        </div>
      </div>
    </div>
    <v-header :headerFlag="headerNum"></v-header>
    <!-- 租房内容 -->
    <div class="Z_entrance">
      <div class="Z_entrance_item">
        <img
          class="Z_entrance_img"
          src="../assets/自如_slices/租房@2x.png"
          alt=""
        />
        <div class="Z_entrance_desc">
          <div class="Z_entrance_title">
            <div class="Z_entrance_desc_allow">
              <img src="../assets/自如_slices/箭头_向右_o .png" alt="" />
            </div>
            <div class="Z_entrance_desc_cont">
              <div class="Z_entrance_xbt">租房</div>
              <div class="Z_entrance_nr">合租/整租/自如寓/曼舍</div>
            </div>
          </div>
        </div>
      </div>
      <div class="Z_entrance_item">
        <img
          class="Z_entrance_img"
          src="../assets/自如_slices/服务@2x.png"
          alt="北京租房"
          title="北京租房"
        />
        <div class="Z_entrance_desc">
          <div class="Z_entrance_title">
            <div class="Z_entrance_desc_allow">
              <img
                src="../assets/自如_slices/箭头_向右_o .png"
                alt="北京租房"
                title="北京租房"
              />
            </div>
            <div class="Z_entrance_desc_cont">
              <div class="Z_entrance_xbt">服务</div>
              <div class="Z_entrance_nr">保洁/搬家/维修</div>
            </div>
          </div>
        </div>
      </div>
      <div class="Z_entrance_item">
        <img
          class="Z_entrance_img"
          src="../assets/自如_slices/生活@2x.png"
          alt="北京租房"
          title="北京租房"
        />
        <div class="Z_entrance_desc">
          <div class="Z_entrance_title">
            <div class="Z_entrance_desc_allow">
              <img src="../assets/自如_slices/箭头_向右_o .png" alt="" />
            </div>
            <div class="Z_entrance_desc_cont">
              <div class="Z_entrance_xbt">生活</div>
              <div class="Z_entrance_nr">自如生活社区/自如全屋智能</div>
            </div>
          </div>
        </div>
      </div>
      <div class="Z_entrance_item">
        <img
          class="Z_entrance_img"
          src="../assets/自如_slices/业主@2x.png"
          alt="北京租房"
          title="北京租房"
        />
        <div class="Z_entrance_desc">
          <div class="Z_entrance_title">
            <div class="Z_entrance_desc_allow">
              <img src="../assets/自如_slices/箭头_向右_o .png" alt="" />
            </div>
            <div class="Z_entrance_desc_cont">
              <div class="Z_entrance_xbt">业主</div>
              <div class="Z_entrance_nr">房屋出租/整栋合作</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 标题部分 -->
    <div class="Z_container">
      <div class="Z_container_title">
        <img src="../assets/自如_slices/左标题装饰 拷贝 2@2x.png" alt="" />
        <span>全面租住服务</span>
        <img src="../assets/自如_slices/右标题装饰 拷贝 2@2x.png" alt="" />
      </div>
      <div class="Z_container_nr">/简化日常繁琐生活/</div>
    </div>
    <!-- 放心住 -->
    <div class="Z_video_main">
      <img src="../assets/自如_slices/深呼吸放心住@2x.png" alt="" />
      <span
        >从家具板材、装修材料、施工管理、空气质量管理、空置期设置等纬度提升产品品质</span
      >
      <img @click="qx" src="../assets/自如_slices/播放@2x.png" alt="" />
      <div v-if="vdFlag" class="Z_video_main_sp">
        <div class="Z_video_vd">
          <video controls="controls" src="../../public/项目展示.mp4"></video>
          <img @click="qx" src="../assets/自如_slices/取消.png" alt="" />
        </div>
      </div>
      <b>查看视频</b>
    </div>
    <!-- 标题部分 -->
    <div class="Z_container">
      <div class="Z_container_title">
        <img src="../assets/自如_slices/左标题装饰 拷贝 2@2x.png" alt="" />
        <span>全面租住服务</span>
        <img src="../assets/自如_slices/右标题装饰 拷贝 2@2x.png" alt="" />
      </div>
      <div class="Z_container_nr">/简化日常繁琐生活/</div>
    </div>
    <!-- 服务部分 -->
    <div class="Z_jiazhen">
      <ul class="clearfix">
        <li v-for="(item, index) in imgbq" :key="index" @click="tp(index)">
          <span>0{{ index + 1 }}{{ bqflag == index }}</span>
          <h4 :class="bqflag == index ? 'active' : ''">{{ item }}</h4>
        </li>
      </ul>
      <div class="Z_service">
        <div class="Z_service_left">
          <img class="img1" src="../assets/自如_slices/ZIROOM@2x.png" alt="" />
          <div class="Z_service_button">
            <img src="../assets/自如_slices/下一个 拷贝@2x.png" alt="" />
            <span></span>
            <img src="../assets/自如_slices/下一个@2x.png" alt="" />
          </div>
        </div>
        <div class="Z_service_right">
          <img :src="imglist[bqflag]" alt="" />
        </div>
        <div class="Z_jiazhen_item">
          <h1
            v-for="(item, index) in imgbq"
            :key="index"
            v-if="index == bqflag"
          >
            {{ item }}
          </h1>
          <h2>/下一刻,明亮如新</h2>
          <p>
            自如旗下专业保洁品牌，成立八年至今，形成
            专属清洁服务标准——人员严选、工具放心、
            流程规范。为用户提供日常保洁、玻璃清洁等
          </p>
        </div>
      </div>
    </div>
    <!-- 标题部分 -->
    <div class="Z_container">
      <div class="Z_container_title">
        <img src="../assets/自如_slices/左标题装饰 拷贝 2@2x.png" alt="" />
        <span>丰富租住体验</span>
        <img src="../assets/自如_slices/右标题装饰 拷贝 2@2x.png" alt="" />
      </div>
      <div class="Z_container_nr">/聚合有趣青年玩转城市生活/</div>
    </div>
    <!-- 丰富生活 -->
    <div class="Z_fengfu">
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 29@2x.png" alt="" />
      </div>
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 28@2x.png" alt="" />
      </div>
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 27@2x.png" alt="" />
      </div>
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 26@2x.png" alt="" />
      </div>
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 25@2x.png" alt="" />
      </div>
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 24@2x.png" alt="" />
      </div>
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 23@2x.png" alt="" />
      </div>
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 22@2x.png" alt="" />
      </div>
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 21@2x.png" alt="" />
      </div>
      <div class="Z_fengfu_sh">
        <div class="Z_fengfu_nr">
          <h1>2019自如国际胡同节</h1>
          <p>
            1000+中外自如客在这座京城二环的百年院落里，一起玩转Bazinga4王争霸赛/CP匹配交友
            / 京城最IN中英脱口秀 / Silent Disco…
            拯救平线心电图，逛吃逛喝笑翻天。
          </p>
        </div>
        <img src="../assets/自如_slices/图层 29@2x.png" alt="" />
      </div>
    </div>
    <!-- 标题部分 -->
    <div class="Z_container">
      <div class="Z_container_title">
        <img src="../assets/自如_slices/左标题装饰 拷贝 2@2x.png" alt="" />
        <span>自如新闻动态</span>
        <img src="../assets/自如_slices/右标题装饰 拷贝 2@2x.png" alt="" />
      </div>
      <div class="Z_container_nr">/自如大事迹/</div>
    </div>
    <!-- 自如新闻 -->
    <div class="Z_xinwen">
      <div class="Z_xinwen_left">
        <div class="left_nr">
          <img src="../assets/自如_slices/箭头@2x.png" alt="" />
        </div>
        <img src="../assets/自如_slices/图层 31@2x.png" alt="" />
      </div>
      <div class="Z_xinwen_content">
        <div class="Z_xinwen_content_title"><span>海燕计划</span></div>
        <h1>海燕计划第10季启动,毕业 租房选自如</h1>
        <p>
          4月20日，自如2022年第10季“海燕计划”启动，面向应届毕业生推出“月付/0押金/0元搬家*”等多项福利，同时联合美团、顺丰速运、去哪儿旅行、网易严选、同程旅行、高德打车六大品牌，为毕业生的品质租房生活保驾护航。
        </p>
        <div class="Z_xiabiao">
          <img src="../assets/自如_slices/下一个 拷贝@2x.png" alt="" />
          <span></span>
          <img src="../assets/自如_slices/下一个@2x.png" alt="" />
        </div>
      </div>
      <div class="Z_xinwen_right">
        <div class="qwe">
          <div class="left_nr">
            <img src="../assets/自如_slices/箭头@2x.png" alt="" />
          </div>
          <img src="../assets/自如_slices/图层 32@2x.png" alt="" />
        </div>
        <div class="qwe">
          <div class="left_nr">
            <img src="../assets/自如_slices/箭头@2x.png" alt="" />
          </div>
          <img src="../assets/自如_slices/图层 33@2x.png" alt="" />
        </div>
      </div>
    </div>
    <!-- 尾部 -->
    <v-footer></v-footer>
  </div>
</template>

<script>
import header from "../components/header.vue";
import footer from "../components/footer.vue";
export default {
  name: "index",
  data() {
    return {
      headerNum: true,
      ssnr: 0,
      ss: ["全部", "合租", "整租", "自如寓", "曼舍"],
      xb: [13, 69, 127, 193.5, 260],
      ipt: true,
      vdFlag: false,
      imgbq: ["自如保洁", "自如搬家", "自如家修"],
      imglist: [
        require("../assets/自如_slices/图层 18@2x.png"),
        require("../assets/自如_slices/自如家修.jpg"),
        require("../assets/自如_slices/自如搬家.jpg"),
      ],
      bqflag: 0,
    };
  },
  methods: {
    bh(index) {
      this.ssnr = index;
      this.ipt = true;
      if (index == 4) {
        this.ipt = false;
      }
    },
    qx() {
      this.vdFlag = !this.vdFlag;
    },
    tp(a) {
      // console.log(a);
      this.bqflag = a;
    },
  },
  components: {
    "v-header": header,
    "v-footer": footer,
  },
};
</script>

<style lang="scss" scoped>
.Z_overlay {
  width: 100vw;
  height: 500px;
  position: relative;
  img {
    width: 100%;
  }
  .Z_search_wrapper {
    position: absolute;
    width: 1152px;
    left: 50%;
    top: 50%;
    margin-left: -570px;
    transform: translateY(-50%);
    .Z_banner_tbox {
      text-align: left;
      h1 {
        font-size: 60px;
        color: #fff;
        text-shadow: 0 1px 2px rgba(0, 0, 0, 0.06);
        margin: 0 0 12px -5px;
        font-weight: 600;
      }
      p {
        width: 428px;
        font-size: 20px;
        color: #fff;
        letter-spacing: 0;
        line-height: 24px;
        text-shadow: 0 1px 2px rgba(0, 0, 0, 0.06);
        text-overflow: -o-ellipsis-lastline;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 6;
        -webkit-box-orient: vertical;
        margin: 0;
      }
    }
    .Z_search_box {
      ul {
        margin-top: 70px;
        color: hsla(0, 0%, 100%, 0.85);
        height: 46px;
        line-height: 46px;
        position: relative;
        left: 0;
        .active {
          color: #fff;
          i {
            display: block;
          }
        }
        li {
          font-size: 17px;
          float: left;
          margin-right: 24px;
          cursor: pointer;
          i {
            display: none;
            border-left: 6px solid transparent;
            border-right: 6px solid transparent;
            width: 0;
            height: 0;
            position: absolute;
            bottom: -1px;
            border-bottom: 7px solid #fff;
            z-index: 9;
          }
        }
      }
      .Z_search_main {
        width: 776px;
        height: 50px;
        line-height: 50px;
        position: relative;
        input {
          width: 411px;
          line-height: 20px !important;
          outline: none;
          border: 0;
          float: left;
          background: #fff;
          height: 50px;
          font-size: 15px;
          color: rgba(0, 0, 0, 0.85);
          padding: 15px 0 15px 22px;
          box-sizing: border-box;
        }
        a {
          display: block;
          width: 132px;
          height: 100%;
          float: left;
          background: #fff;
          text-align: center;
          font-size: 15px;
          border-left: 1px solid #dddddd;
          font-size: 14px;
          font-family: Microsoft YaHei;
          font-weight: 300;
          color: #cccccc;
          position: relative;
          transition: 1s;
          img {
            width: 16px;
            height: 20px;
            margin-right: 3px;
          }
          .z-i {
            transition: 1s;
            position: absolute;
            top: 100%;
            left: 0;
            width: 132px;
            height: 100%;
            background: rgba(0, 0, 0, 0.1);
          }
        }
        a:hover {
          transition: 1s;
          .z-i {
            top: 0px;
          }
        }
        .Z_search_submit {
          display: block;
          width: 132px;
          height: 100%;
          background: #ff961e;
          color: #fff;
          border-radius: 0 2px 2px 0;
        }
      }
    }
  }
}
.Z_entrance {
  width: 1280px;
  height: 280px;
  margin: 40px auto 40px;
  .Z_entrance_item {
    width: 270px;
    margin-right: 24px;
    height: 0;
    padding-bottom: 23%;
    float: left;
    margin-top: 40px;
    position: relative;
    .Z_entrance_img {
      width: 270px;
      height: 203px;
      margin: 0 auto;
      overflow: hidden;
    }
    .Z_entrance_desc {
      transition: 1s;
      background: #fff;
      width: 230px;
      position: absolute;
      height: 92px;
      left: 50%;
      margin-left: -115px;
      text-align: center;
      z-index: 5;
      overflow: hidden;
      box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.08);
      border-radius: 2px;
      bottom: 8px;
      .Z_entrance_title {
        width: 200%;
        height: 100%;
        margin-left: -100%;
        transition: 1s;
        .Z_entrance_desc_allow {
          width: 50%;
          float: left;
          height: 100%;
          line-height: 92px;
          img {
            margin: 30px auto;
            width: 30px;
            height: 30px;
          }
        }
        .Z_entrance_desc_cont {
          width: 50%;
          float: left;
          .Z_entrance_xbt {
            margin: 20px 0 8px;
            font-size: 24px;
            color: rgba(0, 0, 0, 0.85);
            font-weight: 600;
          }
          .Z_entrance_nr {
            font-size: 15px;
            color: rgba(0, 0, 0, 0.4);
            margin: 0;
          }
        }
      }
    }
    .Z_entrance_desc:hover {
      transition: 1s;
      .Z_entrance_title {
        transition: 1s;
        width: 200%;
        height: 100%;
        margin-left: 0;
      }
    }
  }
}
.Z_container {
  width: 300px;
  // height: 121px;
  margin: 0 auto;
  .Z_container_title {
    margin-top: 58px;
    height: 40px;
    display: flex;
    text-align: center;
    span {
      display: inline-block;
      width: 185px;
      font-size: 28px;
      font-family: Microsoft YaHei;
      font-weight: 400;
      color: #2b2b2b;
      margin: 6px 8px;
    }
    img {
      width: 40px;
      height: 40px;
    }
  }
  .Z_container_nr {
    width: 230px;
    height: 16px;
    font-size: 16px;
    font-family: Microsoft YaHei;
    font-weight: 300;
    color: #dddddd;
    line-height: 6px;
    text-align: center;
    margin: 9px auto 0;
  }
}
.Z_video_main {
  margin-top: 37px;
  width: 100vw;
  height: 600px;
  background: url(~@/assets/自如_slices/图层\ 14@2x.png);
  display: flex;
  flex-direction: column;
  align-items: center;
  box-sizing: border-box;
  padding: 123px 0 89px;
  span {
    width: 658px;
    height: 16px;
    font-size: 16px;
    font-family: Microsoft YaHei;
    font-weight: 300;
    color: #ffffff;
    line-height: 6px;
    margin: 26px 0 83px;
  }
  b {
    margin-top: 16px;
    width: 70px;
    height: 16px;
    font-size: 16px;
    font-family: Microsoft YaHei;
    font-weight: 300;
    color: #ffffff;
    line-height: 6px;
  }
  .Z_video_main_sp {
    width: 100%;
    height: 100%;
    position: fixed;
    z-index: 99;
    top: 0;
    left: 0;
    background: rgba(7, 17, 27, 0.8);
    display: flex;
    //设置主轴方向
    flex-direction: column;
    align-items: center;
    .Z_video_vd {
      width: 1120px;
      height: 440px;
      z-index: 300;
      margin-top: 180px;
      position: relative;
      video {
        width: 100%;
        height: 100%;
      }
      img {
        position: absolute;
        top: -15px;
        right: 15px;
        width: 30px;
        height: 30px;
      }
    }
  }
}

.Z_jiazhen {
  margin-top: 40px;
  ul {
    width: 1152px;
    margin: 0 auto;
    text-align: center;
    display: flex;

    li {
      width: 33%;
      span {
        width: 44px;
        height: 31px;
        font-size: 38px;
        font-family: Microsoft YaHei;
        font-weight: bold;
        color: #f2f2f2;
        line-height: 7px;
      }
      h4 {
        width: 89px;
        height: 20px;
        font-size: 20px;
        font-family: Microsoft YaHei;
        font-weight: 400;
        color: #2b2b2b;
        line-height: 6px;
        margin: 0 auto;
        box-sizing: border-box;
      }
      .active {
        border-bottom: 8px solid orange;
      }
    }
  }
  .Z_service {
    width: 1152px;
    height: 580px;
    margin: 36px auto 0;
    display: flex;
    position: relative;
    .Z_service_left {
      flex: 1;
      .img1 {
        margin-left: 19px;
      }
      .Z_service_button {
        position: absolute;
        bottom: 0;
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 180px;
        span {
          display: inline-block;
          width: 50px;
          height: 2px;
          background: #000000;
          border-radius: 1px;
        }
        img {
          width: 30px;
          height: 30px;
        }
      }
    }
    .Z_service_right {
      width: 870px;
      height: 580px;
      img {
        width: 100%;
        height: 100%;
      }
    }
    .Z_jiazhen_item {
      z-index: 3;
      position: absolute;
      top: 161px;
      left: 0;
      width: 372px;
      height: 289px;
      background: white;
      border: 1px solid watch;
      border-radius: 3px;
      padding: 40px 32px;
      box-sizing: border-box;
      h1 {
        width: 119px;
        height: 28px;
        font-size: 28px;
        font-family: Microsoft YaHei;
        font-weight: 400;
        color: #2b2b2b;
        line-height: 6px;
      }
      h2 {
        width: 155px;
        height: 19px;
        font-size: 18px;
        font-family: Microsoft YaHei;
        font-weight: 300;
        color: #dddddd;
        line-height: 6px;
        margin-top: 11px;
      }
      p {
        width: 305px;
        height: 109px;
        font-size: 14px;
        font-family: Microsoft YaHei;
        font-weight: 300;
        color: #dddddd;
        line-height: 24px;
        margin-top: 32px;
      }
    }
  }
}
.Z_fengfu {
  width: 100vw;
  height: 600px;
  margin-top: 38px;
  position: relative;
  .Z_fengfu_sh {
    transition: 1s;
    width: 20%;
    height: 0;
    padding-bottom: 20%;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: 50%;
    float: left;
    position: relative;
    overflow: hidden;
    .Z_fengfu_nr {
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.4);
      position: absolute;
      left: 0;
      bottom: 0;
      right: 0;
      color: #fff;
      padding: 10px;
      font-size: 14px;
      box-sizing: border-box;
      opacity: 0;
      z-index: 1;
      display: table;
      text-align: center;
      vertical-align: middle;
      h1 {
        font-size: 20px;
        text-align: center;
        line-height: 30px;
        transition: all 0.6s 0.1s;
        margin: 12px 0;
        margin-top: 80px;
      }
      p {
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 4;
        -webkit-box-orient: vertical;
        font-size: 15px;
        text-align: justify;
        line-height: 22px;
        width: 80%;
        margin: 0 auto;
        -webkit-transition: all 0.6s 0.3s;
        transition: all 0.6s 0.3s;
        letter-spacing: 0;
      }
    }
    img {
      transition: 1s;
    }
  }
  .Z_fengfu_sh:hover {
    .Z_fengfu_nr {
      transition: 1s;
      opacity: 1;
    }
    img {
      transition: 1s;
      transform: scale(1.2);
    }
  }
}
.Z_xinwen {
  width: 1152px;
  margin: 48px auto 45px;
  display: flex;
  justify-content: flex-start;
  .Z_xinwen_left {
    transition: 3s;
    height: 504px;
    position: relative;
    box-sizing: border-box;
    overflow: hidden;
    img {
      transition: 3s;
    }
    .left_nr {
      position: absolute;
      height: 504px;
      width: 71px;
      background: orange;
      left: -71px;
      top: 0;
      transition: 3s;
      img {
        margin: 252px 24px;
      }
    }
  }
  .Z_xinwen_left:hover {
    transition: 3s;
    img {
      transition: 3s;
      transform: scale(1.1);
    }
    .left_nr {
      transition: 3s;
      left: 0;
      z-index: 3;
    }
  }

  .Z_xinwen_content {
    flex: 1;
    box-sizing: border-box;
    padding: 40px 26px 114px 37px;
    .Z_xinwen_content_title {
      width: 90px;
      height: 30px;
      border: 1px solid white;
      border-radius: 3px;
      background: orange;
      text-align: center;
      span {
        width: 61px;
        height: 14px;
        font-size: 14px;
        font-family: Microsoft YaHei;
        font-weight: 300;
        color: #ffffff;
        line-height: 14px;
      }
    }
    h1 {
      margin: 20px 0 21px;
      width: 308px;
      height: 54px;
      font-size: 24px;
      font-family: Microsoft YaHei;
      font-weight: 400;
      color: #2b2b2b;
      line-height: 29px;
    }
    p {
      width: 303px;
      height: 123px;
      font-size: 14px;
      font-family: Microsoft YaHei;
      font-weight: 300;
      color: #aaaaaa;
      line-height: 22px;
    }
    .Z_xiabiao {
      margin-top: 71px;
      span {
        display: inline-block;
        width: 108px;
        height: 2px;
        background: #000000;
        border-radius: 1px;
        margin: 14px 5px;
      }
      img {
        width: 30px;
        height: 30px;
      }
    }
  }
  .Z_xinwen_right {
    width: 372px;
    .qwe:first-child {
      margin-bottom: 24px;
    }
    .qwe {
      width: 327px;
      height: 237px;
      overflow: hidden;
      position: relative;
      .left_nr {
        transition: 3s;
        position: absolute;
        left: -51px;
        top: 0;
        height: 100%;
        width: 51px;
        background: #ffba15;
        z-index: 11;
        img {
          transition: 3s;
          position: absolute;
          left: 20%;
          top: 50%;
        }
      }
    }
    .qwe:hover {
      transition: 3s;
      img {
        transition: 3s;
        transform: scale(1.1);
      }
      .left_nr {
        transition: 3s;
        left: 0;
        z-index: 3;
      }
    }
  }
}
</style>