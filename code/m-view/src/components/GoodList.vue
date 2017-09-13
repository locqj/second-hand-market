<template>
  <div class="app">
    <p class="line"></p>
    <h4>| 物品</h4>
    <loading></loading>
    <ul class="article-list container list">
    <!-- '/article/'+article.id -->
      <router-link v-for="article in articles" :to="'/buy'" tag="li" :key="article">
          
            <div class="title">
              <p class="avatar"><img class="img-responsive" :src="article.user.avatar" alt=""></p>
              <p class="author">{{article.user.nickname}}</p>
              <p class="author_time">前天 15:39</p>
            </div>
            <div class="imgbox">
                <img v-lazy="article.list_image_url" v-if="article.list_image_url" alt="">
                <img v-lazy="article.list_image_url" v-if="article.list_image_url" alt="">
                <img v-lazy="article.list_image_url" v-if="article.list_image_url" alt="">
            </div>
            <h3>{{article.title}}</h3>
            <div class="statistics">
              <span><i class="iconfont icon-liulan"></i> {{article.views_count}}</span>
              <span><i class="iconfont icon-anzhuo34"></i> {{article.public_comments_count}}</span>
              <span><i class="iconfont icon-shoucang"></i> {{article.likes_count}}</span>
              <span v-if="article.total_rewards_count"><i class="iconfont icon-money"></i> {{article.total_rewards_count}}</span>
              <span class="spanform">来自：xxx|xxx</span>
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
  .app{
    background-color: #FFF;
  }
  h4{
    background-color: #F0F0F0;
    padding:15px 18px;
  }
  .line{
    height: 5px;
  }
  .article-list{
    background-color: #F0F0F0;
    li{
      position: relative;
      background-color: #fff;
      padding-left: 2%;
      padding-right: 2%;
      border-bottom: 5px solid #F0F0F0;
      >div{
        padding: 20px 95px 25px 0;
      }

    }
    .title{
      >p{
        float:left;
        color: $fontColor3;
      }
    }
    .avatar{
      margin: -4px 5px 0 0;
      img{
        width: 40px;
        height: 40px;
        border: 1px solid #F0F0F0;
        border-radius: 50%;
      }
    }
    .title .author{
      margin-right: 10px;
      color: $fontColor1;
    }
    .author_time{
      font-size: 12px
    }
    h3{
      padding: 10px 0;
      font-size: $fontSize3;
      color: $blackColor;
      line-height: 26px;
    }
    .statistics{
      padding-top: 0px;
      color: $fontColor3;
      border-top: 1.5px solid #ddd;
      
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
      .spanform{
        display: block;
        margin-top: 9px;
        color: #26a2ff;
        font-size: $fontSize2;
        font-weight: bold;
      }
      span{
        font-size: $fontSize2;
        margin-right: 10px;
      }
    }
    .imgbox{
      width: 100%;
      margin-top: 9px;
      padding-right: 0px;
      padding-bottom: 0px;
      >img{
        width: 85px;
        height: 85px;
        padding-right:5px;
        border-radius: 9px;
        -webkit-border-radius: 9px;
        -moz-border-radius: 9px;
      }
    }
  }
</style>
