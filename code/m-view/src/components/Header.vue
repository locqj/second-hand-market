<template>
  <mt-header fixed title="创作你的创作" v-if="headerHide">
    <router-link to="/" slot="left">
      <img src="http://upload-images.jianshu.io/upload_images/4999184-c42efdceca4a6b5f.png" alt="">
    </router-link>
  </mt-header>
</template>

<script>
  import { mapGetters } from 'vuex'
  export default {
    name: 'head',
    computed: {
      ...mapGetters([
        'headerHide'
      ])
    }
  }
</script>

<style lang='scss' scoped>
  @import "../assets/css/color.scss";
  .mint-header{
    background-color: #FFF;
    height: 48px;
    line-height: 48px;
    color:$fontColor1;
    box-shadow: 0px 2px 3px #EAEAEA;
    text-align: left;
    font-size: $fontSize3;
    color: $fontColor2;

    .mint-header-button > a{
      display: block;
      height: 48px;
    }
    .mint-header-button.is-left > a{
      padding-left: 10px;
    }
    img{
      margin-top: 4px;
      height: 42px;
    }
  }
</style>
