<template>
  <div>
    <h4>文章</h4>
    <loading></loading>
    <ul class="article-list container list">
      <router-link v-for="article in articles" :to="'/article/'+article.id" tag="li" :key="article">
          <img  v-lazy="article.list_image_url" v-if="article.list_image_url" alt="">
          <div>
            <div class="title clearfix">
              <p class="avatar"><img class="img-responsive" :src="article.user.avatar" alt=""></p>
              <p class="author">{{article.user.nickname}}</p>
              <p>前天 15:39</p>
            </div>
            <h3>{{article.title}}</h3>
            <div class="statistics">
              <span><i class="iconfont icon-liulan"></i> {{article.views_count}}</span>
              <span><i class="iconfont icon-anzhuo34"></i> {{article.public_comments_count}}</span>
              <span><i class="iconfont icon-shoucang"></i> {{article.likes_count}}</span>
              <span v-if="article.total_rewards_count"><i class="iconfont icon-money"></i> {{article.total_rewards_count}}</span>
            </div>
          </div>
      </router-link>
    </ul>
  </div>
</template>

<script>

  export default {
    name: '',
    props: ['articles']
  }
</script>

<style lang='scss' scoped>
  @import "../assets/css/color.scss";
  h4{
    background-color: #F5F5F5;
    padding:15px 18px;
  }
  .article-list{

    li{
      position: relative;
      border-bottom: 1px solid #ddd;

      >div{
        padding: 20px 95px 25px 0;
      }

      >img{
        position: absolute;
        width: 80px;
        height: 80px;
        top: 50%;
        margin-top: -40px;
        right: 3px;
        -webkit-border-radius: 4px;
        -moz-border-radius: 4px;
        border-radius: 4px;
      }
    }
    .title p{
      float:left;
      color: $fontColor3;
    }
    .avatar{
      margin: -4px 5px 0 0;
      img{
        width: 20px;
        height: 20px;
        border: 1px solid #F0F0F0;
        border-radius: 50%;
      }
    }
    .title .author{
      margin-right: 10px;
      color: $fontColor1;
    }
    h3{
      padding: 10px 0;
      font-size: $fontSize3;
      color: $blackColor;
      line-height: 26px;
    }
    .statistics{
      color: $fontColor3;
      i{
        font-size: $fontSize3;
      }
      span:nth-child(1) i{
        font-size: 18px;
        position: relative;
        top:1px;
      }
      span:nth-child(2) i{
        position: relative;
        top: 3px;
      }
      span:nth-child(4) i{
        font-size: $fontSize2;
      }
      span{
        font-size: $fontSize2;
        margin-right: 10px;
      }
    }
  }
</style>
