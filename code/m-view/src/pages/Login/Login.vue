<template>
  <div class="login container">
    <router-link class="close" to="/index" tag="span">&times;</router-link>
    <h3 class="text-center">登录探物</h3>
    <div class="form-field">
      <p>
        <i class="iconfont icon-yonghu"></i>
        <input type="text" placeholder="手机号" v-model="phone">
      </p>
      <p>
        <i class="iconfont icon-unie614"></i>
        <input type="password" placeholder="密码" v-model="password">
      </p>
      <p>
        <i class="iconfont icon-anquan"></i>
        <input type="text" placeholder="请输入图片中的文字" v-model="code">
        <img src="http://upload.jianshu.io/image_captchas/67b2da98-55b8-43fa-aa33-fe7763fa23f6.jpg" height="45px" width="100px">
      </p>
    </div>
    <mt-button type="primary" size="large" @click="login">登录</mt-button>
    <p class="go-register">
      暂无账号,<router-link to="/register">点击注册</router-link>
    </p>

    <div class="more-sign">
      <h6>社交账号直接登录</h6>
      <ul class="list clearfix">
        <li><i class="iconfont icon-QQ"></i></li>
        <li><i class="iconfont icon-xinlang"></i></li>
        <li><i class="iconfont icon-dou"></i></li>
      </ul>
    </div>
  </div>
</template>

<script>
  import {Toast} from 'mint-ui'
  export default {
    name: '',
    data () {
      return {
        phone: '',
        password: '',
        code: ''
      }
    },
    methods: {
      login () {
        const storage = window.localStorage
        const userInfo = storage.getItem('userInfo')
        if (!userInfo) {
          const phoneReg = /^1[34578]\d{9}$/
          if (!this.phone || !phoneReg.test(this.phone)) {
            Toast({
              message: '请输入正确的手机号',
              iconClass: 'iconfont icon-cuowu'
            })
          } else if (!this.password) {
            Toast({
              message: '密码不能为空',
              iconClass: 'iconfont icon-cuowu'
            })
          } else {
            this.$http.get(`http://localhost:3000/user?phone=${this.phone}&password=${this.password}`)
              .then((res) => {
                if (res.data[0]) {
                  Toast({
                    message: '登录成功',
                    iconClass: 'iconfont icon-zhengque'
                  })
                  const userInfo = res.data
                  storage.setItem('userInfo', JSON.stringify(userInfo))
                  this.$router.push({ path: 'home' })
                } else {
                  Toast({
                    message: '用户名或密码错误',
                    iconClass: 'iconfont icon-cuowu'
                  })
                }
              })
          }
        }
      }
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .login{

    .close{
      position: absolute;
      right: 15px;
      top: 20px;
      font-size: 32px;
      color:#969696;
    }

    h3{
      margin-top: 70px;
      font-size: $fontSize3;
      color: $blackColor;
    }
    .form-field{
      margin-top: 10px;

      p{
        position: relative;
      }

      p img{
        position: absolute;
        right:1px;
        top:1px;
        height: 46px;
      }

      p i{
        position: absolute;
        top: 15px;
        left: 14px;
        font-size: 18px;
        color: #969696;
      }

      p:first-child input{
        border-radius: 4px 4px 0 0;
      }

      p:last-child{
        border-radius: 0 0 4px 4px;
        border-bottom: 1px solid #C8C8C8;
      }
    }
    input{
      width: 100%;
      height: 48px;
      margin-bottom: 0;
      padding: 2px 12px 4px 42px;
      border:1px solid #C8C8C8;
      border-bottom:none;
      vertical-align: middle;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
      font-size: $fontSize2;
      background-color: #F5F5F5;
      outline: none;
    }
    button{
      margin-top: 20px;
    }

    .go-register{
      line-height: 28px;
      text-align: right;
      margin-top: 10px;

      a{
        color: $linkColor;
      }
    }

    .more-sign{
      margin-top: 40px;

      h6{
        position: relative;
        margin-bottom: 10px;
        font-size: $fontSize1;
        color:#b5b5b5;
        text-align: center;
      }
      h6:before, h6:after{
        content:'';
        display: block;
        border-top:1px solid #b5b5b5;
        position: absolute;
        top:5px;
        width: 15%;
      }
      h6:before{
        left: 50px;
      }
      h6:after{
        right: 50px;
      }
      ul{
        width: 184px;
        margin: 0 auto;
      }
      li{
        width: 48px;
        height: 48px;
        border-radius: 50%;
        float: left;
        text-align: center;
        line-height: 48px;
        margin-left: 10px;

        i{
          color:#FFF;
        }
      }
      li:nth-child(1){
        background-color: #498AD5;

        i{
          font-size: 24px;
        }
      }
      li:nth-child(2){
        background-color: #E05244;

        i{
          font-size: 30px;
          position: relative;
          top: 2px;
        }
      }
      li:nth-child(3){
        background-color: #00820F;

        i{
          font-size: 36px;
          font-weight:bold;
          position: relative;
          top:-2px;
          left:-1px;
        }
      }
    }
  }
</style>
