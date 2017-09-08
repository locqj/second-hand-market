<template>
  <div id="app">
    <!-- <top></top> -->

    <router-view></router-view>
    <BlackLine></BlackLine>
    <Foot></Foot>
  </div>
</template>

<script>
  import Top from './components/Header.vue'
  import Foot from './components/Footer.vue'
  import BlackLine from './components/BlackLine.vue'

  export default {
    name: 'app',
    components: {
      Top,
      Foot,
      BlackLine
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
  @import './assets/css/css.scss';


</style>
