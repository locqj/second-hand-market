<template>
  <div class="button-group">
    <mt-button size="large"  type="danger">
      登录
      <router-link to="/login"></router-link>
    </mt-button>
    <mt-button size="large" type="primary">
      注册
      <router-link to="/register"></router-link>
    </mt-button>
  </div>
</template>

<script>

  export default {
    name: ''
  }
</script>

<style lang='scss' scoped>
  .button-group{
    padding: 15px;
    button{
      margin-bottom: 10px;
    }
  }
  a{
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: 5;
  }
</style>
