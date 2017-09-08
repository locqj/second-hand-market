<template>
<div class="app">
  <mt-cell title="" is-link   to="/pool/users">
    <div class="poolgroup">
      <span class="left" style="color: green; float:left">
        <img src="http://upload-images.jianshu.io/upload_images/4999184-c42efdceca4a6b5f.png" alt="">
        池主
      </span>
      <span class="right" style="color: green">
        <img src="http://upload-images.jianshu.io/upload_images/4999184-c42efdceca4a6b5f.png" alt="">
        <img src="http://upload-images.jianshu.io/upload_images/4999184-c42efdceca4a6b5f.png" alt="">
        <img src="http://upload-images.jianshu.io/upload_images/4999184-c42efdceca4a6b5f.png" alt="">
      </span>
  </div>

  </mt-cell>
  <div class="note">
    <marquee direction="up" behavior="scroll" scrollamount="1" scrolldelay="2" loop="-1" width="100%"  vspace="5">
      <span>【公告】测试公告上下滚动，长度距离，testsadasdasdasdaasdasdasds</span>
    </marquee>
    <p>
    <img  class="banner" src="http://upload-images.jianshu.io/upload_images/4999184-c42efdceca4a6b5f.png" alt="">
    </p>
  </div>
</div>

</template>
<script>
  import { Cell } from 'mint-ui';
  export default {
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .app{
    margin-top:1.5%;
    .note{
      width: 100%;
      margin-top: 1.5%;
      margin-bottom: 1.5%;
      padding-top:1%;
      padding-bottom:1%;
      font-size: $fontSize3;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
      background-color: #fff
    }
    .note span{
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
      background-color: #fff
    }

    
    @media screen and (min-width:1440px){ /*大于等于1440*/
    /*这里是特定的样式表*/
    }
    @media screen and (max-width:1024px){    
    }
    @media screen and (max-width:768px){
      .left{
        position: absolute;
        right:306px;  //负值为自身体积的一半
      }
      .poolgroup img{
        width: 51px;
        height: 51px;
        border:1.5px solid #fff;
        border-radius: 50%;
      }
      .banner{
        width: 100%;height:132px;
      }
    }
    @media screen and (max-width:375px){
      .left{
        position: absolute;
        right:280px;  //负值为自身体积的一半
      }
      .poolgroup img{
        width: 41px;
        height: 41px;
        border:1.5px solid #fff;
        border-radius: 50%;
      }
      .banner{
        width: 100%;height:107px;
      }
    }
    @media screen and (max-width:320px){
      .left{
        position: absolute;
        right:232px;  //负值为自身体积的一半
      }
      .poolgroup img{
        width: 35px;
        height: 35px;
        border:1.5px solid #fff;
        border-radius: 50%;
      }
      .banner{
        width: 100%;height:96px;
      }
    }

  }
</style>
