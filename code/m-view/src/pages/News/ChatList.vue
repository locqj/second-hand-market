<template>
	<div class="content">
			<ul>
				<li class="seller">
          <div class="chat-user">
          	<img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2877028398,3359662549&fm=27&gp=0.jpg" alt="">
					</div>
          <div class="time"><i>2017.0.1 xxxxxx</i><span>locqjsadasadsadadssdas</span></div>
          <div class="text">中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文</div>
				</li>
				<li class="user" v-for="n in 2">
          <div class="chat-user">
          	<img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1242880180,882943683&fm=58&u_exp_0=675846565,549638273&fm_exp_0=86&bpow=1372&bpoh=864" alt="">
					</div>
          <div class="time"><i>2017.0.1 xxxxxx</i><span>locqjsadasdadadasdasdasdasdasd</span></div>
          <div class="text">中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文</div>
				</li>
				<li class="seller">
          <div class="chat-user">
          	<img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2877028398,3359662549&fm=27&gp=0.jpg" alt="">
					</div>
          <div class="time"><i>2017.0.1 xxxxxx</i><span>locqj</span></div>
          <div class="text">中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文中文</div>
				</li>
			</ul>
	</div>
</template>
<script>
  export default {
  	components: {
  	}
	}
</script>
<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .content{
  	width: 84%;
  	margin: 40% 8% 15% 8%;
  	li:last-child{
  		.text{
	  		margin-bottom:30%;
  		}
  	}
  	.text{
  			width:75%;
  			margin-bottom: 10%;
  			padding: 4% 4% 4% 4%;
        background-color: #ffda44;
	  		border-radius:3%;
  			text-align: left;
  			line-height:18px;
  			color: #fff;
  			
  	}
  	.time{
  		span{
  			display: block;
  			width:45%;
        overflow: hidden;
        text-overflow: ellipsis;
  		}
  	}
  	.user{
  		list-style-type:none;
  		.chat-user{
  			float: right;
  			width: 25%;

  			img{
  				float:right;
  				width:60%;
  			}
  		}
  		.time{
  			float:left;
  			width:70%;
  			margin: 5% 0 2% 5%;
				color: #999;
  			text-align:right;
        i{
        	float:right;
  			}
			}
  		.text{
  			float:left;
  		}

		  .text:before {
		    content: '';
		    width: 0;
		    height: 0;
		    position: absolute;
		    right:17%;

        @media screen and (max-width:1024px){    
			    border-width: 10px;
		    }
		    @media screen and (max-width:768px){
			    border-width: 20px;
		    }
		    @media screen and (max-width:375px){
			    border-width: 18px;
		    }
		    @media screen and (max-width:320px){
			    border-width: 16px;
		    }
		    border-style: solid dashed dashed;
		    border-color: #ffda44 transparent transparent;
		    overflow: hidden;  
			}
  	}
  	.seller{
  		list-style-type:none;
  		.chat-user{
  			float: left;
  			width: 25%;
  			img{
  				float:left;
  				width:60%;
  			}
  		}
  		.time{
  			float:left;
  			width:70%;
  			margin: 5% 5% 2% 0;
				color: #999;
  			text-align:left;
				i{
					float:left;
  				padding-right:5%;
  			}
			}
  		.text{
  			float:right;
  		}
		  .text:before {
		    content: '';
		    width: 0;
		    height: 0;
		    position: absolute;
		    left:17%;

        @media screen and (max-width:1024px){    
			    border-width: 10px;
		    }
		    @media screen and (max-width:768px){
			    border-width: 20px;
		    }
		    @media screen and (max-width:375px){
			    border-width: 18px;
		    }
		    @media screen and (max-width:320px){
			    border-width: 16px;
		    }
		    border-style: solid dashed dashed;
		    border-color: #ffda44 transparent transparent;
		    overflow: hidden;  
			}
  	}
  }
</style>