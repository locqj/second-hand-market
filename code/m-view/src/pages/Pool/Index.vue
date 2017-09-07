<template>
<div>
	<Header title="探池" url="/index"></Header>
	<Header-img></Header-img>
	<Pool-group></Pool-group>
	<Goods></Goods>
	<Foot></Foot>
</div>
	
</template>
<script>
	import HeaderImg from '@/components/HeaderImg.vue'
	import Header from '@/components/Header.vue'
	import PoolGroup from './PoolGroup.vue'
	import Goods from './Goods.vue'
	import Foot from '@/components/Footer.vue'

  export default {
  	name: 'pool',
  	components: {
  		HeaderImg,
  		Header,
  		PoolGroup,
  		Goods,
  		Foot
  	}
  }
</script>
<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
	.app{
		background-color: $background 
	}
</style>