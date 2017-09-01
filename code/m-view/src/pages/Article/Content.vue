<template>
  <div>
    <div class="article-content container" v-html="article.content"></div>
  </div>
</template>

<script>

  export default {
    name: '',
    props: ['article']
  }
</script>

<style lang='scss' scoped>

</style>
