<template>
  <header class="article">
    <div class="container">
      <h1>{{article.title}}</h1>
      <div class="author-info">
        <a class="avatar">
          <img :src="article.user.avatar" alt="">
        </a>
        <span class="name">{{article.user.nickname}}</span>
        <span class="badge">签约作者</span>
      </div>
      <div class="time">{{article.first_shared_at}}</div>
    </div>
  </header>
</template>

<script>

  export default {
    name: '',
    props: ['article']
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .article{
    margin-top: 80px;
    margin-bottom: 30px;
  }
  h1{
    font-size: 28px;
    color: #2F2F2F;
    line-height: 38px;
  }
  .author-info{
    margin: 15px 0;

    .name{
      color: $fontColor1;
      font-size: $fontSize3;
      font-weight: bold;
      margin: 0 5px;
    }

    img{
      width: 34px;
      height: 34px;
      border:1px solid #ddd;
      border-radius: 50%;
      vertical-align: middle;
    }
  }
  .time{
    color: $fontColor3;
  }
  .badge{
    border-color:#E78170;
    color:#E78170;
    font-size: 12px;
  }
</style>
