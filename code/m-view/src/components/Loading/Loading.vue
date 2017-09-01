<template>
  <div class="loading" v-if="showLoad">
    <mt-spinner type="triple-bounce" color="#26a2ff" :size="100"></mt-spinner>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  export default {
    name: '',
    computed: {
      ...mapGetters([
        'showLoad'
      ])
    }
  }
</script>

<style lang='scss' scoped>
  .loading{
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
  }
</style>
