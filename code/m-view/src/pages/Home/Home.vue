<template>
  <div class="home box">
    <Index></Index>
    <Banner></Banner>
    <keep-alive>
      <article-list :articles="index_article"></article-list>
    </keep-alive>
    <Loadmore :load="load"></Loadmore>
    <buttons v-if="!userInfo"></buttons>
  </div>
</template>

<script>
  import { mapGetters, mapActions } from 'vuex'
  import Index from './Index.vue'
  import Banner from './Banner.vue'
  import ArticleList from '../../components/ArticleList.vue'
  import Loadmore from '../../components/LoadMore.vue'
  import Buttons from './Buttons.vue'
  export default {
    name: 'home',
    data () {
      return {
        load: 'LOADMORE_ARTICLE'
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
      ]),
      userInfo () {
        console.log(window.localStorage.getItem('userInfo'))
        return JSON.parse(window.localStorage.getItem('userInfo'))
      }
    },
    components: {
      Index,
      Banner,
      ArticleList,
      Loadmore,
      Buttons
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
</style>
