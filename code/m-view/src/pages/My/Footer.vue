<template>
  <footer>
    <a class="avatar">
      <img src="//upload.jianshu.io/users/upload_avatars/2758117/247d868bf5d6.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/108/h/108" alt="">
    </a>
    <a href="javascript:void(0);" @click="signout">退出</a>
    <b>|</b>
    <router-link to="/home">热门文章</router-link>
  </footer>
</template>

<script>

  export default {
    name: '',
    methods: {
      signout () {
        window.localStorage.removeItem('userInfo')
        window.location.reload()
      }
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  footer{
    text-align: center;
    padding: 10px 0;
    .avatar {
      padding: 0;
      img{
        width: 36px;
        height: 36px;
        border: 1px solid #F0F0F0;
        border-radius: 50%;
        vertical-align: middle;
      }
    }
    a{
      color: $fontColor3;
      font-size: $fontSize3;
      text-decoration: none;
      padding:0 10px;
    }

    b{
      color:#D9E0EA;
    }
  }
</style>
