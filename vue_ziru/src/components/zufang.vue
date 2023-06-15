<template>
  <div class="app">
       <!-- 头部内容 -->
    <v-header :headerFlag="headerNum"></v-header>
    <div style="margin-left: 200px;">
      <div class="searchArea">
      <el-input
        class="searchText"
        v-model="searchDetail"
        placeholder="请输入小区/商圈/地铁站等"
      ></el-input>
      <el-button class="orangeButton" @click="searchRoom()">开始找房</el-button>
      <el-button class="mapButton" icon="el-icon-location-outline"
        >地图找房</el-button
      >
    </div>
    <br /><br />
    <div class="filterWay">
      <div class="oneRow">
        <div class="spanTitle">找房方式</div>
        <div class="detail">
          <el-checkbox-group v-model="choose" :max="1" @change="sArea()">
            <el-checkbox label="区域"></el-checkbox>
            <el-checkbox label="地铁"></el-checkbox>
            <el-checkbox label="通勤"></el-checkbox>
          </el-checkbox-group>
        </div>
      </div>
      <div class="see">
        <div class="detailArea" v-if="areaSee && this.choose == '区域'">
          <span class="chooseText">区域</span>
          <div class="detailChoose">
            <el-button type="text" @click="test()">东城</el-button>
            <el-button type="text">西城</el-button
            ><el-button type="text">朝阳</el-button
            ><el-button type="text">海淀</el-button
            ><el-button type="text">丰台</el-button
            ><el-button type="text">石景山</el-button
            ><el-button type="text">通州</el-button
            ><el-button type="text">昌平</el-button>
          </div>
        </div>
        <div class="detailArea" v-if="areaSee && this.choose == '地铁'">
          <span class="chooseText">地铁</span>
          <div class="detailChoose">
            <el-checkbox-group v-model="subway" :max="1" @change="cSubway()">
              <el-checkbox label="房山线"></el-checkbox>
              <el-checkbox label="一号线"></el-checkbox>
              <el-checkbox label="6号线"></el-checkbox>
            </el-checkbox-group>
          </div>
        </div>
        <div class="detailArea" v-if="areaSee && this.choose == '通勤'">
          <span class="chooseText">通勤</span>
        </div>
      </div>
      <div class="oneRow">
        <div class="spanTitle">类型</div>
        <div class="lessDetail">
          <el-checkbox-group v-model="type" :max="1" @change="cType()">
            <el-checkbox label="不限"></el-checkbox>
            <el-checkbox label="合租"></el-checkbox>
            <el-checkbox label="整租"></el-checkbox>
            <el-checkbox label="自如寓"></el-checkbox>
            <el-checkbox label="曼舍"></el-checkbox>
          </el-checkbox-group>
        </div>
      </div>
      <div class="oneRow">
        <div class="spanTitle">租金</div>
        <div class="lessDetail">
          <el-checkbox-group v-model="money" :max="1" @change="cMoney()">
            <el-checkbox label="1">不限</el-checkbox>
            <el-checkbox label="2">1500元以下</el-checkbox>
            <el-checkbox label="3">1500-2500元</el-checkbox>
            <el-checkbox label="4">2500-3500元</el-checkbox>
            <el-checkbox label="5">3500-4500元</el-checkbox>
            <el-checkbox label="6">4500元以上</el-checkbox>
          </el-checkbox-group>
        </div>
      </div>
      <div class="oneRow">
        <div class="spanTitle">特色户型</div>
        <div class="lessDetail">
          <el-checkbox-group v-model="hux" :max="1" @change="cHux()">
            <el-checkbox label="loft"></el-checkbox>
            <el-checkbox label="近地铁"></el-checkbox>
            <el-checkbox label="有电梯"></el-checkbox>
            <el-checkbox label="主卧独卫"></el-checkbox>
            <el-checkbox label="次卧DIY"></el-checkbox>
            <el-checkbox label="公共？洗室"></el-checkbox>
            <el-checkbox label="独立阳台"></el-checkbox>
            <el-checkbox label="可养宠物"></el-checkbox>
          </el-checkbox-group>
        </div>
      </div>
      <div class="showDetail" v-if="detailSee">
        <span @click="see()">展开选项</span>
      </div>
      <div class="wholeArea" v-if="!detailSee">
        <div class="oneRow">
          <div class="spanTitle">优惠活动</div>
          <div class="lessDetail">
            <el-checkbox-group v-model="home" @change="cHome">
              <el-checkbox label="必看好房"></el-checkbox>
            </el-checkbox-group>
          </div>
        </div>
        <div class="oneRow">
          <div class="spanTitle">房源面积</div>
          <div class="lessDetail">
            <el-checkbox-group v-model="mian" :max="1" @change="cMian()">
              <el-checkbox label="1">10以下</el-checkbox>
              <el-checkbox label="2">10-12</el-checkbox>
              <el-checkbox label="3">12-15</el-checkbox>
              <el-checkbox label="4">15-20</el-checkbox>
              <el-checkbox label="5">20以上</el-checkbox>
            </el-checkbox-group>
          </div>
        </div>
        <div class="showDetail">
          <span class="foldArea" @click="see()"> 收起选项 </span>
        </div>
      </div>
    </div>
    <div class="conditionArea" v-if="this.condition != ''">
      <span>您已选择：</span>
      <div class="conditionDetail" v-for="index in condition" :key="index">
        {{ index }}
        <span @click="delData(index)">X</span>
      </div>
      <div class="deleteAll">
        <el-button type="text" @click="allDelete()">清除所有条件</el-button>
      </div>
    </div>
    <div class="sortArea">
      <el-menu
        :default-active="activeIndex"
        class="el-menu-demo"
        mode="horizontal"
        @select="handleSelect"
      >
        <el-menu-item index="1">默认</el-menu-item>
        <el-menu-item index="2">价格</el-menu-item>
        <el-menu-item index="3">面积</el-menu-item>
      </el-menu>
    </div>
    <div class="roomArea">
      <div
        class="roomDetail"
        v-for="index in room.slice(
          (currentPage - 1) * pageSize,
          currentPage * pageSize
        )"
        :key="index"
      >
        <div class="imaArea">
          <img :src="index.roomPic" alt="" />
        </div>
        <div class="textArea">
          <span class="title">
            {{ index.roomName }}{{ index.roomNumbers }}-{{ index.roomNumber }}
          </span>
          <div class="mianji">
            {{ index.roomArea }}m²&nbsp;|&nbsp;{{ index.floor }}层
          </div>
          <div class="priceArea">￥{{ index.roomPrice }}/月</div>
          <div class="location">
            <i class="el-icon-location"></i>{{ index.roomLocation }}
          </div>
          <div class="tagName">
            <span class="status">{{ index.subway }}</span>
            <span class="status">{{ index.orientationName }}</span>
            <span class="status">{{ index.areaLocation }}</span>
            <span class="status">{{ index.roomNumbers }}</span>
          </div>
        </div>
      </div>
    </div>
    <div class="pagination">
      <el-pagination
        @size-change="handleSizeChange"
        :current-page.sync="currentPage"
        :page-sizes="[4, 8, 12]"
        :page-size="pageSize"
        layout="sizes, prev, pager, next"
        :total="totalNum"
      >
      </el-pagination>
    </div>
    </div>
  </div>
</template>
  
  <script>
import axios from 'axios';
import header from "../components/header.vue";
import footer from "../components/footer.vue";
export default {
  name: "zufang",
  components: {
    "v-header": header,
    "v-footer": footer,
  },
  data() {
    return {
      headerNum: true,
      areaSee: false,
      detailSee: true,
      j: 0,
      searchDetail: "",
      activeIndex: "1",
      currentPage: 1,
      pageSize: 8,
      totalNum: 0,
      condition: [],
      mian: [],
      subway: [],
      type: ["不限"],
      money: ["1"],
      home: [],
      hux: [],
      room: [],
      originRoom: [],
      choose: [],
    };
  },
  created(){
    axios.get("http://localhost:8081/ssmZiRu/findRooms").then(res=>{
        this.room = res.data
        this.totalNum = this.room.length;
       console.log(this.totalNum);
      })
  },
  mounted() {
    console.log(this.room);
    for (var i = 0; i < this.room.length; i++) {
      this.j = i;
    }
    this.totalNum = this.room.length;
    console.log(this.totalNum);
  },
  methods: {
    requestdata(){
      var e = this.searchDetail.toString();
      var that = this
      axios.get('http://localhost:8081/ssmZiRu/findBy?condition='+e).then(res=>{
        // this.room = res.data;
        this.room = res.data
        this.totalNum = this.room.length;
      })
    },
    handleSizeChange(size) {
      this.pageSize = size;
    },
    searchRoom() {
      // 模糊查询 未解决
      var e = this.searchDetail.toString();
      var that = this
      axios.get('http://localhost:8081/ssmZiRu/findBy?condition='+e).then(res=>{
        // this.room = res.data;
        that.room = res.data
        console.log(that.room);
      })
    },
    refreshData() {
      for (var i = 0; i < this.room.length; i++) {
        this.j = i;
      }
      this.totalNum = this.j + 1;
      console.log(this.totalNum);
    },
    unique(array) {
      this.condition = Array.from(new Set(array));
      console.log(this.condition);
    },
    see() {
      this.detailSee = !this.detailSee;
    },
    sArea() {
      this.areaSee = !this.areaSee;
      console.log(this.choose);
    },
    cSubway() {
      // console.log(this.subway)
      if (this.subway != "") {
        var e = this.subway.toString();
        this.condition.push(e);
        // console.log(this.condition);
        this.unique(this.condition);
        this.room = this.room.filter((item) => {
          return item.subway == e;
        });
        this.refreshData();
        console.log(this.room);
      }
    },
    cType() {
      // console.log(this.type);
      if (this.type != "") {
        var e = this.type.toString();
        this.condition.push(e);
        // console.log(this.condition);
        this.unique(this.condition);
        this.room = this.room.filter((item) => {
          return item.tenementName == e;
        });
        this.refreshData();
        console.log(this.room);
      }
    },
    cMoney() {
      // console.log(this.money);
      if (this.money != "") {
        var test = "";
        if (this.money == 2) {
          test = "1500元以下";
          this.room = this.room.filter((item) => {
            return item.roomPrice < 1500;
          });
          this.refreshData();
        } else if (this.money == 3) {
          test = "1500-2500元";
          this.room = this.room.filter((item) => {
            return item.roomPrice >= 1500 && item.roomPrice < 2500;
          });
          this.refreshData();
        } else if (this.money == 4) {
          test = "2500-3500元";
          this.room = this.room.filter((item) => {
            return item.roomPrice >= 2500 && item.roomPrice < 3500;
          });
          this.refreshData();
        } else if (this.money == 5) {
          test = "3500-4500元";
          this.room = this.room.filter((item) => {
            return item.roomPrice >= 3500 && item.roomPrice < 4500;
          });
          this.refreshData();
        } else {
          test = "4500元以上";
          this.room = this.room.filter((item) => {
            return item.roomPrice >= 4500;
          });
          this.refreshData();
        }
        this.condition.push(test.toString());
        this.unique(this.condition);
      }
    },
    cHux() {
      if (this.hux != "") {
        var e = this.hux.toString();
        this.condition.push(this.hux.toString());
        // console.log(this.condition);
        this.unique(this.condition);
        this.room = this.room.filter((item) => {
          return item.tenementName == e;
        });
        this.refreshData();
      }
    },
    cHome() {
      // console.log(this.home);
      if (this.home != "") {
        this.condition.push(this.home.toString());
        this.unique(this.condition);
        this.$message.error("数据库内没有对应数据");
        this.refreshData();
        // console.log(this.condition);
      }
    },
    cMian() {
      if (this.mian != "") {
        var test = "";
        if (this.mian == 1) {
          test = "10以下";
          this.room = this.room.filter((item) => {
            return item.roomArea < 10;
          });
          this.refreshData();
        } else if (this.mian == 2) {
          test = "10-12";
          this.room = this.room.filter((item) => {
            return item.roomPrice >= 10 && item.roomPrice < 12;
          });
          this.refreshData();
        } else if (this.mian == 3) {
          test = "12-15";
          this.room = this.room.filter((item) => {
            return item.roomPrice >= 12 && item.roomPrice < 15;
          });
          this.refreshData();
        } else if (this.mian == 4) {
          test = "15-20";
          this.room = this.room.filter((item) => {
            return item.roomPrice >= 15 && item.roomPrice < 20;
          });
          this.refreshData();
        } else {
          test = "20以上";
          this.room = this.room.filter((item) => {
            return item.roomPrice >= 20;
          });
          this.refreshData();
        }
        this.condition.push(test.toString());
        // console.log(this.condition);
        this.unique(this.condition);
        // console.log(this.condition);
      }
    },
    delData(index) {
      console.log(index);
      for (let i = 0; i < this.condition.length; i++) {
        if (this.condition[i] == index) {
          this.condition.splice(i, 1);
        }
      }
    },
    allDelete() {
      this.condition = [];
      location.reload();
    },
    roomItem(e) {
      let userInfo = JSON.parse(localStorage.getItem("userInfo"));
      console.log(e.roomId);
      let routeURL = this.$router.resolve({
        path: "/about",
        query: {
          roomId: e.roomId,
        },
      });
      if (userInfo.isLogin) {
        window.open(routeURL.href, "_blank");
      }else{
        this.$message.warning("请先登录再查看详细信息！")
      }
    },
  },
};
</script>
<style scoped>
.app {
  width: 100%;
  min-height: 100vh;
  margin: auto 0;
}
.searchArea {
  margin-top: 80px;
  width: 600px;
  display: flex;
}

.searchText .el-input__inner {
  display: flex;
  width: 400px !important;
}
.orangeButton,
.orangeButton:hover {
  float: left !important;
  background-color: rgb(255, 150, 30) !important;
  color: white !important;
}
.mapButton {
  float: left;
}
.filterWay {
  width: 800px;
}
.oneRow {
  margin-top: 20px;
  display: flex;
  width: 1000px;
}
.spanTitle {
  font-weight: 700;
  font-size: 16px;
  float: left;
}
.detail {
  margin-top: 3px;
  margin-left: 20px;
  float: left;
}
.lessDetail {
  margin-top: 3px;
  margin-left: 40px;
  float: left;
}
.detailChoose .el-button {
  color: rgb(152, 152, 152) !important;
}
.detail .el-checkbox__input {
  margin-right: 20px;
  color: rgb(152, 152, 152);
  font-size: 16px;
}
.el-checkbox__input .el-checkbox__inner {
  display: none;
}
.detail .el-checkbox__input + .el-checkbox__label::after {
  content: "∧";
}
.detail .el-checkbox:hover {
  color: rgb(255, 150, 30) !important;
  cursor: pointer;
}
.el-checkbox__input.is-checked + .el-checkbox__label {
  color: rgb(255, 150, 30) !important;
}
.detail .el-checkbox__input.is-checked + .el-checkbox__label::after {
  content: "∨";
}
.detailArea {
  color: rgb(152, 152, 152);
  width: 800px;
  display: flex;
}
.chooseText {
  margin-top: 8px;
  margin-right: 40px;
  display: flex;
}
.detailChoose .el-checkbox-group {
  margin-top: 12px;
}
.showDetail {
  margin-top: 30px;
  width: 1000px;
}
.showDetail span {
  color: rgb(152, 152, 152);
  font-size: 15px;
}
.showDetail span::after {
  content: "∧";
}
.showDetail .foldArea {
  content: "∨";
}
.conditionArea {
  display: flex;
  margin-top: 10px;
}
.conditionArea span {
  margin-top: 5px;
  color: rgb(152, 152, 152);
  font-size: 14px;
}
.conditionDetail {
  padding-top: 4px;
  font-size: 14px;
  width: 100px;
  height: 23px;
  color: rgb(255, 150, 30);
  background-color: rgb(255, 237, 216);
  border: 1px solid rgb(255, 150, 30);
  margin-right: 10px;
}
.conditionDetail span {
  font-size: 14px;
  color: rgb(255, 150, 30);
  margin-left: 3px;
  cursor: pointer;
}
.deleteAll {
  float: right;
  margin-left: 10px;
  color: gray !important;
}
.roomDetail {
  width: 300px;
  height: 400px;
  margin-right: 30px;
  margin-top: 20px;
  box-sizing: border-box;
  display: inline-block;
  float: left;
  border: 1px solid rgb(189, 189, 189);
  border-radius: 12px;
}
.roomDetail img {
  width: 300px;
  height: 250px;
  border-radius: 12px;
}
.title {
  margin-left: 8px;
  font-weight: 600;
  display: flex;
  widows: 300px;
  font-size: 18px;
}
.mianji,
.location {
  margin-top: 5px;
  margin-left: 10px;
  display: flex;
  color: rgb(183, 183, 183);
  font-size: 12px;
}
.mianji {
  float: left;
}
.location {
  float: left;
  width: 220px;
}
.priceArea {
  float: right;
  color: rgb(255, 150, 30);
  font-size: 18px;
}
.tagName {
  float: left;
  margin-left: 5px;
}
.tagName span {
  display: inline-block;
  height: 25px;
  width: 70px;
  padding-top: 5px;
  margin-right: 5px;
  font-size: 13px;
  color: rgb(178, 178, 178);
  background-color: rgb(250, 250, 250);
}
.el-menu--horizontal > .el-menu-item.is-active {
  border-bottom: 2px solid rgb(255, 150, 30) !important;
}
.pagination {
  float: left;
  margin-top: 30px;
  margin-bottom: 100px;
  margin-left: 200px;
  width: 600px;
}
</style>