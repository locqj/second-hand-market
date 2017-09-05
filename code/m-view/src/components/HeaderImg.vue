<template>
  <div class="header">
    <div class="left">
      <div class="poolname">eteasdsasadadads</div>
      <div class="poolmark"><span>人气：1234</span><span>昨日来访：+222</span></div>
    </div>
    <img src="http://upload-images.jianshu.io/upload_images/4999184-c42efdceca4a6b5f.png" alt="">
  </div>
</template>

<script>
  import { Cell } from 'mint-ui';
  export default {
    name: 'head',
  }
</script>

<style lang='scss' scoped>
  @import "../assets/css/color.scss";
  .header{
    width: 100%;
    height: 131px;
    background-color: $headerblackColor;
    img{
      width: 75px;
      height: 75px;
      border:1.5px solid #fff;
      border-radius: 50%;
      margin: 29.5px
    }
    .left{
      width: 57%;
      height: 131px;
      float: left
    }
    .poolname{
      width: 100%;
      margin-top: 13%;
      margin-left: 13%;
      font-size: $title;
      max-width: 250px;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
    }
    .poolmark{
      width: 100%;
      height: 45%;
      margin-top:2px;
      margin-left:13%;
      font-size: $fontSize3;
      span{
        margin-top: 1px;
        display:block
      }
    }
  }

</style>
