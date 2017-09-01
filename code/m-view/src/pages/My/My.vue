<template>
  <div class="box">
    <div class="container">
      <top :userInfo="userInfo"></top>
    </div>
    <div v-if="articles">
      <article-list :articles="articles"></article-list>
    </div>
    <foot></foot>
  </div>
</template>

<script>
  import Top from './Header.vue'
  import ArticleList from '../../components/ArticleList.vue'
  import Foot from './Footer.vue'
  export default {
    name: 'my',
    data () {
      return {
        userInfo: {},
        articles: []
      }
    },
    mounted () {
      const userInfo = JSON.parse(window.localStorage.getItem('userInfo'))
      if (!userInfo) {
        this.$router.push({path: '/login'})
      } else {
        this.$http.get(`http://localhost:3000/user?id=${userInfo[0].id}`)
          .then((res) => {
            this.userInfo = res.data[0]
          })
        this.$http.get(`http://localhost:3000/articles?user.id=${userInfo[0].id}`)
          .then((res) => {
            this.articles = res.data
          })
      }
    },
    components: {
      Top,
      ArticleList,
      Foot
    }
  }
</script>

<style lang='scss' scoped>
</style>
