<template>
  <div class="register container">
    <h3 class="text-center">信用信息采集</h3>
    <mt-cell class="upload-title" title="上传身份证正面照">
      <span></span>
    </mt-cell>
    <Uploads :uploadurl="xxx"></Uploads>
    
    <mt-cell class="upload-title" title="上传身份证反面照">
      <span></span>
    </mt-cell>
    <Uploads :uploadurl="xxx"></Uploads>

    <mt-cell class="upload-title" title="上传学生证正面照">
      <span></span>
    </mt-cell>
    <Uploads :uploadurl="xxx"></Uploads>

    <mt-cell class="upload-title" title="上传学生证正面照">
      <span></span>
    </mt-cell>
    <Uploads :uploadurl="xxx"></Uploads>

    <mt-button class="button-finish" type="primary" size="large" @click="verify">完成</mt-button>
    <p class="go-register">
      暂不验证？,<router-link to="/index">点击跳过</router-link>
    </p>

  </div>
</template>

<script>
  import Uploads from '@/components/Uploads/Index.vue'
  import { Toast } from 'mint-ui';
  export default {
    name: '',
    data () {
      return {
      }
    },
    methods: {
      verify () {

      }
    },
    components: {
      Uploads
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
      text-align: left;
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
    h3{
      margin-top: 70px;
      margin-bottom: 15px;
      
      font-size: $fontSize3;
      color: $blackColor;
    }
    .upload-title{
      border: 2px soild #c8c8c8;
      background-color: #F5F5F5;
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
    .button-finish{
      margin-top: 20px;
    }
    
    .go-register{
      line-height: 28px;
      text-align: right;
      margin-top: 10px;
      margin-bottom: 84px;

      a{
        color: $linkColor;
      }
    }
  }
</style>

