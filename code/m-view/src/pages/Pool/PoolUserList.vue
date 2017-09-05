<template>
	<div>
		<mt-navbar v-model="selected">
		  <mt-tab-item id="1">发布榜</mt-tab-item>
		  <mt-tab-item id="2">签到榜</mt-tab-item>
		</mt-navbar>
		<mt-tab-container v-model="selected">
		  <mt-tab-container-item id="1">
		    <mt-cell title="标题文字">
				  <span>icon 是图片</span>
				  <img slot="icon" src="../../assets/100x100.png" width="36" height="36">
				</mt-cell>
		  </mt-tab-container-item>
		  <mt-tab-container-item id="2">
		    <mt-cell v-for="n in 4" :title="'测试 ' + n" />
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
<style>
	
</style>