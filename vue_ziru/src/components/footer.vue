<template>
  <div>
    <div class="footer1">
      <div class="footer_firt">
        <ul>
          <li>加入我们</li>
          <li>隐私政策</li>
          <li>网站地图</li>
        </ul>
      </div>
      <div class="footer_two">
        <ul class="footer_two_first">
          <li>友情链接</li>
          <li>热门区域</li>
          <li>地铁周边</li>
          <li>热门城市</li>
        </ul>
        <ul class="footer_two_last">
          <li>北京房产网</li>
          <li>北京房产</li>
        </ul>
      </div>
      <div class="footer_last">
        <img src="../assets/自如_slices/图层 35@2x.png" alt="" />
        <ul>
          <li>北京自如信息科技有限公司 Copyright©2020 ziroom.com 版权所有</li>
          <li>京公网安备 11010502035900号 京ICP备16015349号</li>
          <li>违法和不良信息举报电话:4001001111-9</li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "footer1",
};
</script>

<style lang="scss" scoped>
.footer1 {
  width: 100vw;
  .footer_firt {
    width: 1152px;
    height: 68px;
    margin: 0 auto;
    border-top: 1px solid #f2f2f2;
    border-bottom: 1px solid #f2f2f2;
    ul {
      li {
        float: left;
        width: 69px;
        height: 16px;
        font-size: 16px;
        font-family: Microsoft YaHei;
        font-weight: 300;
        color: #aaaaaa;
        line-height: 68px;
        margin-right: 32px;
      }
    }
  }
  .footer_two {
    width: 1152px;
    height: 160px;
    margin: 0 auto;
    .footer_two_first {
      padding: 42px 0 39px;
      height: 16px;
      li {
        float: left;
        width: 70px;
        font-size: 16px;
        font-family: Microsoft YaHei;
        font-weight: 300;
        color: #aaaaaa;
        line-height: 6px;
        margin-right: 30px;
      }
    }
    .footer_two_last {
      padding-bottom: 51px;
      li {
        float: left;
        width: 75px;
        height: 14px;
        font-size: 14px;
        font-family: Microsoft YaHei;
        font-weight: 300;
        color: #dddddd;
        line-height: 6px;
        margin-right: 30px;
      }
    }
  }
  .footer_last {
    width: 1152px;
    margin: 0 auto;
    border-top: 1px solid #f2f2f2;
    padding-top: 28px;
    ul {
      display: inline-block;
      margin-left: 44px;
      li {
        height: 13px;
        font-size: 12px;
        font-family: Microsoft YaHei;
        font-weight: 300;
        color: #dddddd;
        line-height: 6px;
      }
      li:nth-child(2) {
        margin: 7px;
      }
    }
  }
}
</style>