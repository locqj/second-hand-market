<template>
	<div class="imgbox">
		<uploader :src="url" ></uploader>
	</div>
</template>
<script>
	import uploader from './Uploads.vue'
	export default {
		name: '',
		props: ['url'],
		data () {
			return {}
		},
		components: {
			uploader
		}
	}
</script>
<style type="text/css">
	.imgbox{
		margin-top: 5px;
		width: 100%
	}
</style>