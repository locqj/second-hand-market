<template>
  <mt-tabbar fixed v-if="footerHide" v-model="selected">
    <!-- <mt-tab-item id="/home">
      <i slot="icon" class="iconfont icon-shouye-copy"></i>
      首页
      <router-link to="/home"></router-link>
    </mt-tab-item>
    <mt-tab-item id="/write">
      <i slot="icon" class="iconfont icon-iconfontcolor32"></i>
      写文章
      <router-link to="/write"></router-link>
    </mt-tab-item>
    <mt-tab-item id="/my">
      <i slot="icon" class="iconfont icon-wode"></i>
      我的
      <router-link to="/my"></router-link>
    </mt-tab-item> -->
    <mt-tab-item id="/my">
      <i slot="icon" class="iconfont icon-wode"></i>
      首页
      <router-link to="/my"></router-link>
    </mt-tab-item>
    <mt-tab-item id="/my">
      <i slot="icon" class="iconfont icon-wode"></i>
      院系
      <router-link to="/my"></router-link>
    </mt-tab-item>
    <mt-tab-item id="/my">
      <i slot="icon" class="iconfont icon-wode"></i>
      发布
      <router-link to="/my"></router-link>
    </mt-tab-item>
    <mt-tab-item id="/my">
      <i slot="icon" class="iconfont icon-wode"></i>
      消息
      <router-link to="/my"></router-link>
    </mt-tab-item>
    <mt-tab-item id="/my">
      <i slot="icon" class="iconfont icon-wode"></i>
      我的
      <router-link to="/my"></router-link>
    </mt-tab-item>
  </mt-tabbar>
</template>

<script>
  import { mapGetters } from 'vuex'
  export default {
    name: 'foot',
    computed: {
      ...mapGetters([
        'selected',
        'footerHide'
      ])
    }
  }
</script>

<style lang='scss' scoped>
  @import "../assets/css/color.scss";
  .iconfont{
    font-size: 24px;
  }

  .mint-tab-item{
    color: $fontColor1;
    position: relative;

    a{
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
    }
  }
  .mint-tabbar{
    background: #FFF;
    border-top: 1px solid #DDD;

    > .mint-tab-item.is-selected{
      background: #FFF;
    }
  }
</style>
