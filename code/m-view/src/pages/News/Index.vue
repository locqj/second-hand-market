<template>
	<div class="container-header">
		<Header title="消息"  url="/index"></Header>
		<mt-cell v-for="n in 20" to="/news/chat">
		  <span>
		  	<span class="title">小明同学</span>
		  	<span class="time">2天前</span>
		  	<span class="news">testasdasdasdadsadadasdsdadasadasda</span>
			  <img  src="../../assets/100x100.png">
		  </span>
		  <img slot="icon" src="../../assets/100x100.png">
		</mt-cell>
	</div>
</template>
<script>
	import Header from '@/components/Header.vue'

  export default {
  	components: {
  		Header
  	}
	}
</script>
<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .mint-cell{
    min-height: 80px;
    img:nth-child(1){
      width: 44px;
      height: 44px;
      margin-top:-2%;
      border-radius:100%
    }
    img{
      width: 32px;
      height: 32px;
      border-radius: 20%
    }
  }
  
  .title{
    width: 189px;
    position: absolute;
    font-size: $fontSize3;
    font-weight:bold;
    left:58px;
    top: 32px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;

  }
  .time{
    position: absolute;
    left:58px;
    top: 16px;
    font-size: $fontSize1
  }
  .news{
    width: 189px;
    position: absolute;
    left:58px;
    top: 51px;
    font-size: $fontSize2;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

</style>