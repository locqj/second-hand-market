<template>
  <header class="person-info clearfix">
    <div class="avatar pull-left">
      <img :src="userInfo.img_head" alt="">
    </div>
    <div class="author-info pull-left">
      <div class="name">{{ userInfo.users.name }}</div>
      <div class="description">
        在探物赚得xxx元
      </div>
      <div class="intros">
        <span>
          <span class="intros-content">
            asdasd
          </span>
        </span>
      </div>
    </div>
    <div class="link_click" @click="rlink"> > </div>
    <div class="flex">
        <div class="numbox">
          <span class="num">0</span>
          <span class="numname">被赞数</span>
        </div>
        <div class="numbox">
          <span class="num">0</span>
          <span class="numname">关注数</span>
        </div>
        <div class="numbox">
          <span class="num">0</span>
          <span class="numname">粉丝数</span>
        </div>
      </div>
  </header>
</template>

<script>
  export default {
    name: '',
    data () {
      const _this = this
      return {
        userInfo: [],
        edit: false,
        intros: '',
        sheetVisible: false,
      }
    },
    created () {
      this.userInfo = this.$store.state.mutations.user
      this.userInfo = JSON.parse(this.userInfo)
      if (!this.userInfo.img_head) {
        this.userInfo.img_head = "//upload.jianshu.io/users/upload_avatars/2758117/247d868bf5d6.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/180/h/180"
      } else {
        this.userInfo.img_head = '/test/storage/'+this.userInfo.img_head
      }
    },
    methods: {
      rlink() {
        this.$router.push({ path: '/my/info', query: { code: this.userInfo.user_code} })
      }
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  
  .person-info{
    padding: 5% 0% 5% 0%;
    position: relative;
    .intros-content {
      display: inline-block;
      width: 100%;
      overflow: hidden;
      text-overflow:ellipsis;
      white-space: nowrap;
    }
    input{
      width: 120px;
      height: 28px;
      border: 1px solid #ddd;
      border-radius: 3px;
      padding: 3px 10px;
      outline:none;
    }
    .edit{
      color: $linkColor;
      text-decoration: none;
      position: relative;
      top: -2px;
    }
    
    .author-info{
      margin-left: 10px;

      div{
        margin-bottom: 10px;
      }

      .name{
        font-size: 20px;
        font-weight: bold;
        color: $blackColor;
      }

      .description{
        color: $fontColor3;
      }

      .intros{
        color: $fontColor1;
      }
    }
    .link_click{
      position: absolute;
      top: 43%;
      right: 5%;
    }
  }
  @media screen and (min-width:1440px){ /*大于等于1440*/
  /*这里是特定的样式表*/
  }
  @media screen and (max-width:1024px){    
  }
  @media screen and (max-width:768px){
    .avatar{
      padding-left: 4%;
      img{
        width: 72px;
        height: 72px;
        border: 1px solid $interline;
        border-radius: 50%;
      }
    }
    .flex {
      position: absolute;
      top: 102px;
      border-top: 1px solid $interline;
      width: 100%;
      height: 20;
      display: block;
      align-items: center;
      .numbox{
        width: 120px;
        margin:2% 2%;
        height: 55px;
        float:left;
        span:nth-child(1){
          display: block;
          text-align: center;
          margin-top: 10px;
          margin-bottom: 10px
        }
        span:nth-child(2){
          display: block;
          text-align: center
        }
      }
    }
  }
  @media screen and (max-width:375px){
    .avatar{
      padding-left: 4%;
      img{
        width: 72px;
        height: 72px;
        border: 1px solid $interline;
        border-radius: 50%;
      }
    }
    .flex {
      position: absolute;
      top: 102px;
      border-top: 1px solid $interline;
      width: 100%;
      height: 20;
      display: block;
      align-items: center;
      .numbox{
        width: 110px;
        margin:2% 2%;
        height: 55px;
        float:left;
        span:nth-child(1){
          display: block;
          text-align: center;
          margin-top: 10px;
          margin-bottom: 10px
        }
        span:nth-child(2){
          display: block;
          text-align: center
        }
      }
    }

  }
  @media screen and (max-width:320px){
    .avatar{
      padding-left: 4%;
      img{
        width: 62px;
        height:62px;
        border: 1px solid $interline;
        border-radius: 50%;
      }
    }
    
    .flex {
      position: absolute;
      top: 102px;
      border-top: 1px solid $interline;
      width: 100%;
      height: 20;
      display: block;
      align-items: center;
      .numbox{
        width: 92px;
        margin:2% 2%;
        height: 55px;
        float:left;
        span:nth-child(1){
          display: block;
          text-align: center;
          margin-top: 10px;
          margin-bottom: 10px
        }
        span:nth-child(2){
          display: block;
          text-align: center
        }
      }
    }

  }
</style>
