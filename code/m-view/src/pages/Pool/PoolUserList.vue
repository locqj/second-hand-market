<template>
	<div class="poollist">
		<mt-navbar v-model="selected">
		  <mt-tab-item id="1">发布榜</mt-tab-item>
		  <mt-tab-item id="2">签到榜</mt-tab-item>
		</mt-navbar>
		<mt-tab-container v-model="selected">
		  <mt-tab-container-item id="1">
		    <mt-cell v-for="n in 120" :title="'我是小清新' + n">
				  <span>{{n}}</span>
				  <img slot="icon" src="../../assets/100x100.png" width="36" height="36">
				</mt-cell>
		  </mt-tab-container-item>
		  <mt-tab-container-item id="2">
		    <mt-cell v-for="n in 120" :title="'我是小可爱' + n">
				  <span>{{n}}</span>
				  <img slot="icon" src="../../assets/100x100.png" width="36" height="36">
				</mt-cell>
		  </mt-tab-container-item>
		</mt-tab-container>
	</div>
</template>
<script>
  import { Cell } from 'mint-ui';
  export default {
  	data () {
  		return {
  			selected: '1'
  		}
  	}
  }
</script>
<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
	.poollist{
		margin-top: 10%;
	}
</style>