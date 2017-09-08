<template>
  <div class="home">
    <IndexHeader></IndexHeader>
    <Banner></Banner>
    <Navbar></Navbar>
    <Loadmore :load="load"></Loadmore>
    <!-- 判断当前状态用户登录情况，未登录显示登录或者注册按钮在最下方 -->
    <foot></foot>
  </div>
</template>

<script>
  import IndexHeader from './IndexHeader.vue'
  import Banner from './Banner.vue'
  import Loadmore from '../../components/LoadMore.vue'
  import Navbar from './Navbar.vue'
  import Foot from '@/components/Footer.vue'
  export default {
    name: 'home',
    data () {
      return {
        load: 'LOADMORE_ARTICLE'
      }
    },
    computed: {
      userInfo () {
        console.log(window.localStorage.getItem('userInfo'))
        return JSON.parse(window.localStorage.getItem('userInfo'))
      }
    },
    components: {
      IndexHeader,
      Banner,
      Loadmore,
      Navbar,
      Foot
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
</style>
