<template>
  <article>
    <ul class="container">
      <li>随时随地发现和创作内容</li>
      <li>每天为你精选好文</li>
      <li>第一时间收到作者文章更新</li>
    </ul>
  </article>
</template>

<script>

  export default {
    name: ''
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  article{
    background: url("//cdn2.jianshu.io/assets/mobile/index_phone-e47b04f8b57ad885770ec579c4341259.png") no-repeat right -48px;
    background-size: 128px auto;
    color: $fontColor1;
    padding: 15px;
    ul{
      line-height: 30px;
    }
  }
</style>
