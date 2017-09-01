<template>
  <div id="app">
    <!-- <top></top> -->
    <router-view></router-view>
    <foot></foot>
  </div>
</template>

<script>
  import Top from './components/Header.vue'
  import Foot from './components/Footer.vue'
  export default {
    name: 'app',
    components: {
      Top,
      Foot
    },
    methods: {
      routerChange () {
        this.$store.dispatch('ROUTER_CHANGE', this.$route.path)
      }
    },
    created () {
      this.routerChange()
    },
    watch: {
      '$route': function () {
        this.routerChange()
      }
    }
  }
</script>

<style lang="scss">
  @import './assets/css/reset.css';
  @import "./assets/css/base.scss";
</style>
