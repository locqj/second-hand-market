<template>
	<div class="container-header">
		<Header title="xxx"  url="/index"></Header>
		<div class="goods_title">
		  <img  src="http://diy.qqjay.com/u2/2012/0618/ed6982355b1340095aeaf79072bdc1cc.jpg" width="60" height="60">
		  <div class="goods_content">
		  	<span class="price">￥123元</span>
		  	<span class="addpostage">含运费123元</span>
		  	<span class="chat">交易前聊一聊</span>
		  </div>
		  <mt-button type="danger" class="buy">立即购买</mt-button>
		</div>
		<ChatList></ChatList>
		<div  class="footer">
      <mt-field placeholder="请输入内容" type="text" class="send_content"></mt-field>
		  <mt-button type="primary" class="send">发送</mt-button>
    </div>

	</div>
</template>
<script>
	import Header from '@/components/Header.vue'
	import ChatList from './ChatList.vue'
  export default {
  	components: {
  		Header,
  		ChatList
  	}
	}
</script>
<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .goods_title{
	  position:fixed;
	  z-index:999;
    left:0;
    top:3%;
  	width:100%;
  	margin:5% 0 5% 0;
  	padding-top: 5%;
  	background-color: #fff;
  	img{
			float:left;
			padding: 0 4% 0 4%; 
  	}
  	.goods_content{
  		width:30%;
			float:left;
			span{
				display:block;
				margin:4% 0 6% 0;
			}
			.price{
				color: #000
			}
  	}
  	.buy{
  		float: right;
  		margin-right:4%;
  		margin-top: 2%
  	}
  }
  .footer{
  	width:100%;
    position:fixed;
    left:0;
    bottom:0;
  	background-color: #f7f7f7;
  	.send_content{
			width:75%;
  		float:left;
  	}
  	.send{
  		width:25%;
  		margin-top:1.5%;
  		float:right;
  	}
  }
  .content{
  	width:100%;
  }
</style>