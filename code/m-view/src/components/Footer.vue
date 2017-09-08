<template>
  <div>
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
      <mt-tab-item id="/index">
        <i slot="icon" class="iconfont icon-wode"></i>
        首页
        <router-link to="/index"></router-link>
      </mt-tab-item>
      <mt-tab-item id="/pool">
        <i slot="icon" class="iconfont icon-wode"></i>
        探池
        <router-link to="/pool"></router-link>
      </mt-tab-item>
      <div class="send" @click="addgood">
        <span><img src="../assets/img/add_b.png" alt=""></span>
        <span>发布</span>
      </div>
      <mt-tab-item id="/my" class="">
        <i class="iconfont add-goods" slot="icon"></i>
        
        <router-link to="/my"></router-link>
      </mt-tab-item>
      <mt-tab-item id="/news">
        <i slot="icon" class="iconfont icon-wode"></i>
        消息
        <router-link to="/news"></router-link>
      </mt-tab-item>
      <mt-tab-item id="/my">
        <i slot="icon" class="iconfont icon-wode"></i>
        我的
        <router-link to="/my"></router-link>
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
  import { mapGetters } from 'vuex'
  export default {
    name: 'foot',
    methods: {
      addgood () {
        window.location.href="/send"
      }
    },
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
  @media screen and (max-width:768px){
    .send{
      width: 20%;
      display: block;
      position:absolute;
      top:-22%;
      left:40%;
      z-index:999;
      span:nth-child(1){

        display:block;
        img{
          width:55%;
          height:55%;
          border-radius: 50%;
          background-color: #ffda44
        }
      }
      span:nth-child(2){
        font-size:13px;
      }
    }
  }
  @media screen and (max-width:375px){
    .send{
      width: 20%;
      display: block;
      position:absolute;
      top:-13%;
      left:40%;
      z-index:999;
      span:nth-child(1){

        display:block;
        img{
          width:55%;
          height:55%;
          border-radius: 50%;
          background-color: #ffda44
        }
      }
      span:nth-child(2){
        font-size:12px;
      }
    }
  }
  @media screen and (max-width:320px){
    .send{
      width: 20%;
      display: block;
      position:absolute;
      top:-12%;
      left:40%;
      z-index:999;
      span:nth-child(1){

        display:block;
        img{
          width:65%;
          height:65%;
          border-radius: 50%;
          background-color: #ffda44
        }
      }
      span:nth-child(2){
        font-size:13px;
      }
    }
  }
</style>
