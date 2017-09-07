<template>
	<div>
		<mt-cell v-for="n in 20">
		  <span>
		  	<span class="money">200</span>
		  	<span class="title">加湿器 Laravel AnglurJSxianasdasdsa</span>
		  	<span class="news">留言<span>23</span>|浏览<span>1111</span></span>
		  	<mt-button size="small" type="danger">删除</mt-button>
		  	<mt-button size="small">修改</mt-button>
		  </span>
		  <img slot="icon" src="../assets/100x100.png">
		</mt-cell>
	</div>
</template>
<script>
  export default {
    data () {
      return {
        userInfo: {},
        articles: []
      }
    },
  	components: {
  	}
	}
 
</script>
<style lang='scss' scoped>
  @import "../assets/css/color.scss";
    .mint-cell{
  	min-height: 100px;
	  img{
	  	width: 30%;
	  	height: 30%;
	  	margin-top:-2%;
	  	border-radius:20%
	  }
  }
  .money{
  	position: absolute;
  	font-size: $fontSize3;
  	font-weight:bold;
  	color: red;
  	left:23%;
  	margin-left:1%;
  	top: 40px;
  }
  .title{
  	position: absolute;
  	left:23%;
  	margin-left:1%;
  	top: 24px;
  	font-size: $fontSize1;
  	color: #000;
  	font-weight:600;
  	width: 36%;
  	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;

  }
  .news{
  	width: 36%;
  	position: absolute;
  	left:23%;
  	margin-left:1%;
  	top: 59px;
  	font-size: $fontSizeSmall;
  	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

  @media screen and (min-width:375px) and (max-width:400px){
  	.title{
  		width: 46%;
	  	left:20%;

  	}
  	.money{
	  	left:20%;
  	}
  	.news{
  		width: 46%;
	  	left:20%;

  	}
    .mint-cell{
	  	min-height: 100px;
		  img{
		  	width: 25%;
		  	height: 25%;
		  	margin-top:-2%;
		  	border-radius:20%
		  }
	  }
  }
  @media screen and (min-width:400px) and (max-width:756px){
  	.title{
  		width: 48%;
	  	left:21%;

  	}
  	.money{
	  	left:21%;
  	}
  	.news{
  		width: 48%;
	  	left:21%;

  	}
    .mint-cell{
	  	min-height: 100px;
		  img{
		  	width: 25%;
		  	height: 25%;
		  	margin-top:-2%;
		  	border-radius:20%
		  }
	  }
  }
</style>