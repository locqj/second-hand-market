<template>
	<div>
		<Header title="消息" url="/index"></Header>
		<mt-cell v-for="n in 20" to="/news/chat">
		  <img slot="icon" src="../../assets/100x100.png" width="20" height="20">
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
</style>