<template>
  <div class="loadmore" @click="loadmore">
    展开更多文章 <i class="iconfont icon-xiangxia"></i>
  </div>
</template>

<script>
//  import { mapActions } from 'vuex'
  export default {
    name: '',
    props: ['load'],
    methods: {
      loadmore () {
        this.$store.dispatch(this.load)
      }
    }
  }
</script>

<style lang='scss' scoped>
  @import "../assets/css/color.scss";
  .loadmore{
    text-align:center;
    padding: 20px;
    font-size: $fontSize3;
    color: $fontColor3;
    border-bottom: 18px solid #F5F5F5;

    i{
      font-size: 14px;
      font-weight: bold;
    }
  }
</style>
