<template>
  <div class="register container">
    <router-link class="close" to="/home" tag="span">&times;</router-link>
    <h3 class="text-center">注册账号</h3>
    <div class="form-field">
      <p>
        <i class="iconfont icon-yonghu"></i>
        <input type="text" placeholder="用户名" v-model="userInfo.username">
      </p>
      <p>
        <i class="iconfont icon-yonghu"></i>
        <input type="text" placeholder="邮箱" v-model="userInfo.email">
      </p>
      <p>
        <i class="iconfont icon-unie614"></i>
        <input type="password" placeholder="密码" v-model="userInfo.password">
      </p>
      <p>
        <i class="iconfont icon-unie614"></i>
        <input type="password" placeholder="确认密码" v-model="userInfo.sure_password">
      </p>
      <p>
        <i class="iconfont icon-shouji"></i>
        <input type="text" placeholder="手机号" v-model="userInfo.phone">
      </p>
      <p>
        <i class="iconfont icon-anquan"></i>
        <input type="text" placeholder="请输入短信验证码" v-model="userInfo.code">
        <mt-button class="verify" @click.native="verify()" :disabled="disabled || time > 0">
          {{text_verift}}
        </mt-button>
      <!--   <img src="http://upload.jianshu.io/image_captchas/67b2da98-55b8-43fa-aa33-fe7763fa23f6.jpg" height="45px" width="100px">
 -->      </p>

    </div>
    <mt-button type="primary" size="large" @click="register">注册</mt-button>
    <p class="go-register">
      已有账号,<router-link to="/login">点击登录</router-link>
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
        time: 0,
        userInfo: {
          phone: '',
          username: '',
          password: '',
          sure_password: '',
          email: '',
          code: ''
        }
      }
    },
    props: {
        second: {
          type: Number,
          default: 60
        },
        disabled: {
          type: Boolean,
          default: false
        }
    },
    computed: {
      text_verift: function () {
          return this.time > 0 ? this.time + 's 后重新获取' : '获取验证码';
      }
    },
    methods: {
      verify () {
        this.disabled = true;
        setTimeout(this.sended, 2000);
        Toast({
          message: '已发送',
          position: 'bottom'
        })
      },
      sended() {
        this.run();
        this.disabled = false;
      },
      run: function () {
        this.time = this.second
        this.timer()
      },
      timer: function () {
        if (this.time > 0) {
          this.time--
          setTimeout(this.timer, 1000)
        }
      },
      register () {
        const phoneReg = /^1[34578]\d{9}$/
        if (!this.userInfo.phone || !phoneReg.test(this.userInfo.phone)) {
          Toast({
            message: '手机格式不正确',
            iconClass: 'iconfont icon-cuowu'
          })
        } else if (!this.userInfo.username) {
          Toast({
            message: '用户名不能为空',
            iconClass: 'iconfont icon-cuowu'
          })
        } else if (!this.userInfo.password) {
          Toast({
            message: '密码不能为空',
            iconClass: 'iconfont icon-cuowu'
          })
        } else if (this.userInfo.password !== this.userInfo.sure_password) {
          Toast({
            message: '两次密码不一致',
            iconClass: 'iconfont icon-cuowu'
          })
        } else if (!this.userInfo.code) {
          Toast({
            message: '请输入验证码',
            iconClass: 'iconfont icon-cuowu'
          })
        } else {
          this.$http.post('test/api/user/register', this.userInfo)
            .then((res) => {
              let data = res.data.original
              if (data.code === 0) {
                let instance = Toast(data.msg)
                setTimeout(() => {
                  instance.close()
                  // window.location.reload()
                }, 2000)
              } else {
                let instance = Toast({
                  message: '注册成功',
                  iconClass: 'iconfont icon-zhengque'
                })
                setTimeout(() => {
                  instance.close()
                  // this.$router.push({ path: data.data.url })
                  window.location.href = data.data.url
                }, 2000)
              }
              // const storage = window.localStorage
              // const userInfo = res.data
              // storage.setItem('userInfo', JSON.stringify(userInfo))
              // this.$router.push({ path: 'home' })
          })
        }
      }
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .register{
    .close{
      position: absolute;
      right: 15px;
      top: 20px;
      font-size: 32px;
      color:#969696;
    }
    .input-btn{
      margin-top: 0px;
      border-radius: 0px;
      box-shadow: 0 0 0px #b8bbbf;
      width: 100%;
      height: 48px;
      margin-bottom: 0;
      text-align: center;
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
      p .verify{
        margin-top: 0px;
        float: right;
        position: absolute;
        font-size: 14px;
        right:1px;
        top:1px;
        height: 46px;
        width: 38%
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
