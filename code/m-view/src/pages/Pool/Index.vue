<template>
<div>
	<Header title="探池" url="/index"></Header>
	<Header-img></Header-img>
	<Pool-group></Pool-group>
	<Goods></Goods>
</div>
	
</template>
<script>
	import HeaderImg from '@/components/HeaderImg.vue'
	import Header from '@/components/Header.vue'
	import PoolGroup from './PoolGroup.vue'
	import Goods from './Goods.vue'
  export default {
  	name: 'pool',
  	components: {
  		HeaderImg,
  		Header,
  		PoolGroup,
  		Goods
  	}
  }
</script>
<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
	.app{
		background-color: $background 
	}
</style>