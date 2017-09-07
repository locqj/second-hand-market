<template>
  <div>
      <Header title="我卖出的" url="/my"></Header>
      <MyGoodList></MyGoodList>
  </div>
</template>
<script>
  import Header from '@/components/Header.vue'
  import MyGoodList from '@/components/MyGoodList.vue'
  export default {
    data () {
      return {
        userInfo: {},
        articles: []
      }
    },
    components: {
      Header,
      MyGoodList
    }
  }
 
</script>
<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
</style>