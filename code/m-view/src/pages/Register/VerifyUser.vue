<template>
  <div class="register container">
    <h3 class="text-center">信用信息采集</h3>
    <mt-cell class="upload-title" title="上传身份证正面照">
      <span></span>
    </mt-cell>
    <Uploads :url="'/test/api/uploadheadimg/2'"></Uploads>
    
    <mt-cell class="upload-title" title="上传身份证反面照">
      <span></span>
    </mt-cell>
    <Uploads :url="'/test/api/uploadheadimg/3'"></Uploads>

    <mt-cell class="upload-title" title="上传学生证正面照">
      <span></span>
    </mt-cell>
    <Uploads :url="'/test/api/uploadheadimg/4'"></Uploads>

    <mt-cell class="upload-title" title="上传学生证正面照">
      <span></span>
    </mt-cell>
    <Uploads :url="'/test/api/uploadheadimg/5'"></Uploads>

    
    <mt-tabbar fixed  class="footer">
        <mt-button size="large" type="primary" @click="register">完成</mt-button>
      </mt-tabbar>
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
    .button-finish{
      margin-top: 20px;
    }
    
    .go-register{
      line-height: 28px;
      text-align: right;
      margin-top: 10px;
      margin-right: 7px;
      margin-bottom: 84px;
      a{
        color: $linkColor;
      }
    }
  }
</style>

