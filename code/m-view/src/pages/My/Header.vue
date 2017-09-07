<template>
  <header class="person-info clearfix">
    <div class="avatar pull-left" @click="showCursor">
      <img src="//upload.jianshu.io/users/upload_avatars/2758117/247d868bf5d6.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/180/h/180" alt="">
    </div>
    <div class="author-info pull-left">
      <div class="name">{{userInfo.username}}asdasdasdasda</div>
      <div class="description">
        在探物赚得xxx元
      </div>
      <div class="intros">
        <span>
          <span class="intros-content" v-if="!edit">
            {{userInfo.intros?userInfo.intros:'编辑签名'}}
          </span>
        </span>
      </div>
    </div>
    <input type="file" accept="image/*;capture=camera" ref="isFile" style="display: none;">
    <mt-actionsheet
      :actions="actions"
      v-model="sheetVisible">
    </mt-actionsheet>
    <div class="flex">
        <div class="numbox">
          <span class="num">{{starnum}}0</span>
          <span class="numname">被赞数</span>
        </div>
        <div class="numbox">
          <span class="num">{{focusnum}}0</span>
          <span class="numname">关注数</span>
        </div>
        <div class="numbox">
          <span class="num">{{fannum}}0</span>
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
        edit: false,
        intros: '',
        sheetVisible: false,
        actions: [
          {
            name: '更换头像',
            method () {
              _this.$refs.isFile.click()
            }
          }
        ]
      }
    },
    props: ['userInfo'],
    methods: {
      showCursor () {
        this.sheetVisible = true
      },
      editing () {
        this.intros = this.userInfo.intros
        this.edit = true
      },
      save () {
        this.$http.put(`http://localhost:3000/user/${this.userInfo.id}`, {
          ...this.userInfo
        }).then((res) => {
          console.log(res)
        })
        this.edit = false
      },
      cancel () {
        this.userInfo.intros = this.intros
        this.edit = false
      }
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .person-info{
    padding: 5% 1% 5% 1%;
    position: relative;
    .intros-content{
      display: inline-block;
      width: 160px;
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
    .avatar{
      img{
        width: 72px;
        height: 72px;
        border: 1px solid $interline;
        border-radius: 50%;
      }
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
  }
  @media screen and (min-width:1440px){ /*大于等于1440*/
  /*这里是特定的样式表*/
  }
  @media screen and (max-width:1024px){    
  }
  @media screen and (max-width:768px){
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
  @media screen and (max-width:375px){
    .flex {
      position: absolute;
      top: 102px;
      border-top: 1px solid $interline;
      width: 100%;
      height: 20;
      display: block;
      align-items: center;
      .numbox{
        width: 99px;
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
    .flex {
      position: absolute;
      top: 102px;
      border-top: 1px solid $interline;
      width: 100%;
      height: 20;
      display: block;
      align-items: center;
      .numbox{
        width: 85px;
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
