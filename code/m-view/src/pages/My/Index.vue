<template>
	<div class="container-header">
    <Thead title="我的" url="/index"></Thead>

    <div class="container">
	    <MyHeader></MyHeader>
    </div>
    <hr>
    <div class="cell">
      <mt-cell title="我发布的" is-link to="/my/post">
        <span>3</span>
        <img slot="icon" src="../../assets/img/book.png" width="24" height="24">
      </mt-cell>
      <mt-cell title="我卖出的" is-link to="/my/sold">
        <span>5</span>
        <img slot="icon" src="../../assets/img/book.png" width="24" height="24">
      </mt-cell>
      <mt-cell title="我买到的" is-link to="/my/buy">
        <span>10</span>
        <img slot="icon" src="../../assets/img/book.png" width="24" height="24">
      </mt-cell>
      <mt-cell title="我收藏的" is-link to="/my/store">
        <span>12</span>
        <img slot="icon" src="../../assets/img/book.png" width="24" height="24">
      </mt-cell>
      <mt-cell title="我点赞的" is-link to="/my/like">
        <span>12</span>
        <img slot="icon" src="../../assets/img/goodcontent.png" width="24" height="24">
      </mt-cell>
      <hr class="hr">
      <mt-button type="danger" size='large' class='logout' @click="logout">退出登录</mt-button>
    </div>
  </div>
</template>
<script>
  import {Toast} from 'mint-ui'
  import Thead from '@/components/Header.vue'
  import MyHeader from './Header.vue'
  export default {
    data () {
      return {
        userInfo: [],
        articles: [],
      }
    },
    methods: {
      logout() {
        this.$store.dispatch('DOLOGOUT')
        Toast({
          message: '登出成功',
          iconClass: 'iconfont icon-zhengque'
        })
        this.$router.push({ path: 'login' })

      }
    },
  	components: {
  		Thead,
  		MyHeader,
  	},
	}
</script>
<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  hr{
  	position: absolute;
    width: 100%;
    top: 208px;
  	margin-top: 7px;
  	*margin: 0;
  	border: 0;
  	color: $interline;
  	background-color: $interline;
  	height: 15px;
  }
  .hr{
    position: absolute;
    width: 100%;
    top: 234px;
    margin-top: 7px;
    *margin: 0;
    border: 0;
    color: $interline;
    background-color: $interline;
    height: 15px;
  }
  .cell{
    position: absolute;
    width: 100%;
    top: 226px;
  }
  .logout{
    width: 90%;
    position: absolute;
    left: 5%;
    margin-top: 10%;
    margin-bottom: 25%;

  }
</style>