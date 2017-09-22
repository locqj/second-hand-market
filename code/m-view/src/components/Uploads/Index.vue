<template>
	<div class="imgbox">
		<uploader :src="'test/api/uploadheadimg'"></uploader>
	</div>
</template>
<script>
	import uploader from './Uploads.vue'
	export default {
		name: '',
		props: ['uploadurl'],
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