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
</style>
