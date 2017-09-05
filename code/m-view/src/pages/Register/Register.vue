<template>
  <div class="register container">
    <router-link class="close" to="/home" tag="span">&times;</router-link>
    <h3 class="text-center">注册账号</h3>
    <div class="form-field">
      <p>
        <i class="iconfont icon-shouji"></i>
        <input type="text" placeholder="手机号" v-model="userInfo.phone">
      </p>
      <p>
        <i class="iconfont icon-yonghu"></i>
        <input type="text" placeholder="用户名" v-model="userInfo.username">
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
        <i class="iconfont icon-anquan"></i>
        <input type="text" placeholder="请输入短信验证码" v-model="userInfo.code">
        <mt-button class="verify" @click.native="verify('birthday')">
          获取验证码
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
        startDate: new Date('1950-1-1'),
        endDate: new Date(),
        yearSlot: [{
          flex: 1,
          values: ['请选择', '2001', '2002', '2003', '2004', '2005', '2006', '1990', '1991', '1992', '1993', '1994', '1995'],
          className: 'slot1'
        }],
        userInfo: {
          phone: '',
          username: '',
          password: '',
          sure_password: '',
          code: ''
        }
      }
    },
    methods: {
      verify () {
        Toast({
          message: '已发送',
          position: 'bottom'
        })
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
          this.$http.get(`http://localhost:3000/user?phone=${this.userInfo.phone}`)
            .then(function (res) {
              if (res.data[0]) {
                Toast({
                  message: '该手机已被注册',
                  iconClass: 'iconfont icon-cuowu'
                })
                return
              } else {
                this.$http.post('http://localhost:3000/user', this.userInfo)
                  .then((res) => {
                    Toast({
                      message: '注册成功',
                      iconClass: 'iconfont icon-zhengque'
                    })
                    const storage = window.localStorage
                    const userInfo = res.data
                    storage.setItem('userInfo', JSON.stringify(userInfo))
                    this.$router.push({ path: 'home' })
                  })
              }
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
        width: 30%
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
