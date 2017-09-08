<template>
<mt-header :title="title" fixed>
  <router-link :to="url" slot="left">
    <mt-button icon="back">返回</mt-button>
  </router-link>
  <mt-button icon="more" slot="right"></mt-button>
</mt-header>
</template>
<script>
  import { mapGetters } from 'vuex'
  export default {
    name: 'head',
    props: ["title", "url"],
    
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
    line-height: 48px;
    color:$fontColor1;
    box-shadow: 0px 2px 3px #EAEAEA;
    text-align: center;
    font-size: $fontSize3;
    color: $fontColor2;
  }
</style>
