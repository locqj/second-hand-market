<template>
  <div class="article">
    <top :article="article"></top>
    <mainContent :article="article"></mainContent>
  </div>
</template>

<script>
  import Top from './Header.vue'
  import mainContent from './Content.vue'
  export default {
    name: '',
    data () {
      return {
        article: {
          user: {
          }
        }
      }
    },
    created () {
      this.$http.get(`http://localhost:3000/articles/${this.$route.params.id}`)
        .then((res) => {
          this.article = res.data
        })
    },
    components: {
      Top,
      mainContent
    }
  }
</script>

<style lang='scss' scoped>
</style>
