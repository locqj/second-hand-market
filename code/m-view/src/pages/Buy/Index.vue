<template>
	<div class="container-header">
      <Header title="宝贝详情" url="/index"></Header>
			<div class="goods">
				<div class="goods_top">
					<img src="../../assets/img/logo.png" alt="">
					<div class="info">
						<div class="username">xxxx无敌最寂寞1233333333333</div>

						<div class="addtime">三天前来过1233333333333</div>
					</div>
					<div class="price">230</div>
				</div>
				<div class="good_desc">
					asdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasdddddddddddddddddddasdadasdasddddddddddddddddddd
				</div>
				<div class="good_img">
						<img src="../../assets/goods-img.jpg" alt="">
						<img src="../../assets/goods-img.jpg" alt="">
						<img src="../../assets/goods-img.jpg" alt="">
						<img src="../../assets/goods-img.jpg" alt="">
						<img src="../../assets/goods-img.jpg" alt="">
						<img src="../../assets/goods-img.jpg" alt="">

				</div>
			</div>
			<div class="block"></div>
			<div class="message">
				<p class="msg">留言</p>
				<div class="conment">
					<img src="../../assets/img/yu.png" alt="" class="no-bg">
					<p class="nomsg">还没有人留言，还不快来抢沙发</p>
				</div>
				<div class="conment">
					<div class="u-conment">
						<div class="u-conment-title">
							<img src="../../assets/goods-img.jpg" alt="" class="conment-avator">
							<span class="u-conment-title-name">小可爱</span>							
						</div>
						<div class="u-conment-msg">bucuoasasdsazhe这佛年贺词不觉额有多好，能不能便宜点dasdddddddddddddddd</div>
						<div class="u-conment-time">xxx分钟前</div>
					</div>
					<div class="r-conment">
						<div class="u-conment-title">
							<img src="../../assets/goods-img.jpg" alt="" class="conment-avator">
							<span class="u-conment-title-name">小扫货</span>
						</div>
						<div class="u-conment-msg">asdsasadasdsadsabucuoasasdsazhe这佛年贺词不觉额有多好，能不能便宜点bucuoasasdsazhe这佛年贺词不觉额有多好，能不能便宜点dsadsdsadsadsd</div>
						<div class="u-conment-time">xxx分钟前</div>
					</div>
				</div>
			</div>
	    <mt-tabbar fixed v-model="selected" class="footer">
	    	<mt-button class="footer-message">
					<img src="../../assets/img/message.png" alt="" >
				  留言
				</mt-button>
				<mt-button class="footer-givestar" @click="star">
					<img src="../../assets/img/zan.png" alt="" v-if="show">
					<img src="../../assets/img/zan1.png" alt="" v-else>
				  点赞
				</mt-button>
				<mt-button type="danger" class="want">我想要</mt-button>
	    </mt-tabbar>
	</div>
</template>
<script>
import {mapGetters,mapActions} from 'vuex'
import Header from '@/components/Header.vue'

export default {
	data () {
		return {
			news: '',
			message: '',
			show: true,
			isLogin: ''
		}
	},
	mounted () {
		this.isLogin = this.$store.state.mutation.isLogin
		// console.log(this.isLogin)
		document.documentElement.scrollTop = document.body.scrollTop = 0
		this.news= this.$store.state.mutation.news
		this.show = this.$store.state.mutation.show
	},
	methods: {
		msg () {

		},
		star () {
			this.show = !this.show
			// console.log(this.show)
			// this.$store.dispatch('setShow', this.show)
			// if(this.show) {
			// 	this.$store.dispatch('cutLikenum')

			// }else {
			// 	this.$store.dispatch('setLikenum')
			// }
	
		},
		buy () {
			if(this.isLogin){
				this.$router.push({path:'/chat'})
			}else {
				this.$router.push({path: '/login'})
			}
			
		}
	},
	components: {
	  Header
  }

}
</script>

<style lang='scss' scoped>
  @import '../../assets/css/color.scss';
  .container-header{
		width: 100%;
		height: 100%;
		background-color: #f7f7f7;
  }
  .goods{
		width: 100%;
		min-height: 100%;
		padding: 1% 1%;
		margin-top: 16%;
		box-sizing: border-box;
		background-color: #fff;
		
	  .goods_top{
			width: 100%;
			margin-top: 5%;
			margin-left: 2%;

			img{
				width: 25%;
				border-radius: 50%;
				float:left;
			}
			.info{
				float:left;
				width:54%;
				margin-top:4%;
				.username{
					color: #000;
					font-size: $fontSize3;
					font-weight: 600;
					margin-bottom: 6%;
		      overflow: hidden;
		      text-overflow: ellipsis;
		      white-space: nowrap;
				}
				.addtime{
		      overflow: hidden;
		      text-overflow: ellipsis;
		      white-space: nowrap;
				}
			}
			.price{
				float:left;
				font-size: $fontSize3;
				color: red;
				margin-top:7%;
				margin-left: 5%;
				
			}
	  }
	  .good_desc{
	  	clear:both;
	  	width:93%;
			margin-left: 3.5%;
			margin-right: 3.5%;
	  	word-wrap:break-word;
	  	word-break:break-all;
	  }
	  .good_img{
	  	width:93%;
	  	margin-left: 3.5%;
			margin-right: 3.5%;
	  	img{
	  		margin-top: 2%;
	  		width:100%;
	  	}
	  }
  }
	.message{
		background-color: #fff;
		.msg{
			width: 93%;
			text-indent:1em;
			padding: 5% 0 5% 0;
			margin-left: 3.5%;
			margin-right: 3.5%;
			border-bottom: 1px solid #989898;
		}
		.conment{
			border-bottom: 1px solid #989898;
			padding-bottom: 2%;	
			.no-bg{
				width:30%;
				margin: 10% 35% 2% 35%;
			}
			.nomsg{
				width:100%;
				text-align: center;
				margin-bottom: 10%;				
			}
			.u-conment, .r-conment{
				.u-conment-title{
					margin-bottom: 2%;
					.conment-avator{
						width:11.5%;
						height:30px;
						border-radius: 10%;
					}
					.u-conment-title-name{
						font-size: 14px;
						font-weight: 600;
						color:#000;
					}

				}
				.u-conment-msg{
					margin: 1% 0 1% 9%;
					font-size: 14px;
					color: #000			
				}
				.u-conment-time{
					margin: 3% 0 1% 9%;
				}
			}
			.u-conment{
				width: 93%;				
				margin: 2% 3.5% 1% 3.5%;
				padding-bottom: 2%;
				border-bottom: 1px solid #eee;
			}
			.r-conment{
				width: 86%;				
				margin: 2% 3.5% 1% 10.5%;
			}
		}
	}
	.footer{
		height: 8%;
		background-color: #f7f7f7;
		border-radius:0px;
		img{
			width:25%;
		}
		.footer-message{
			height: 100%;
			width:25%;
			border: none;

		}
		.footer-givestar{
			height: 100%;
			width:25%;
		}
		.want{
			width:24%;
			height:100%;
			margin-left:26%;
			font-size: 16px;
		}
	}
  .block{
  	height: 20px;
  	width:100%;
  }
</style>