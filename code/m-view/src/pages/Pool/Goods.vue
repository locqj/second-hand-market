<template>
  <div>
    <mt-navbar v-model="nav_selected">
      <mt-tab-item id="1">你喜欢</mt-tab-item>
      <mt-tab-item id="2">最新的</mt-tab-item>
    </mt-navbar>
    <mt-tab-container v-model="nav_selected">
      <mt-tab-container-item id="1">
        <keep-alive>
          <GoodList :articles="index_article"></GoodList>
        </keep-alive>
      </mt-tab-container-item>
      <mt-tab-container-item id="2">
        <keep-alive>
          <GoodList :articles="index_article"></GoodList>
        </keep-alive>
        <!-- <mt-cell v-for="n in 4" :title="'测试 ' + n" /> -->
      </mt-tab-container-item>
    </mt-tab-container>
    <mt-button class="join-btn" type="default" size="large">加入池子</mt-button>
  </div>
</template>

<script>
  import { mapGetters, mapActions } from 'vuex'
  import GoodList from '../../components/GoodList.vue'
  export default {
    name: 'navbar',
    data () {
      return {
        nav_selected: '1'
      }
    },
    mounted () {
      this.get()
    },
    methods: {
      ...mapActions({
        get: 'GET_INDEX_ARTICLE'
      })
    },
    computed: {
      ...mapGetters([
        'index_article'
      ])
    },
    components: {
      GoodList
    }
  }
</script>


<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
    @media screen and (min-width:1440px){ /*大于等于1440*/
    /*这里是特定的样式表*/
    }
    @media screen and (max-width:1024px){    
    }
    @media screen and (max-width:768px){
      .join-btn{
        position:fixed;
        bottom:8%;
      }
    }
    @media screen and (max-width:375px){
      .join-btn{
        position:fixed;
        bottom:8.8%;
      }
    }
    @media screen and (max-width:320px){
      .join-btn{
        position:fixed;
        bottom:10.5%;
      }
    }
</style>
