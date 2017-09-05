<template>
	<div class="app">
		<Header title="池子成员" url="/pool"></Header>
		<Pool-user-list></Pool-user-list>
	</div>
</template>
<script>
  import { Cell } from 'mint-ui';
  import PoolUserList from './PoolUserList.vue'
  import Header from '@/components/Header.vue'
  export default {
  	components: {
  		PoolUserList,
  		Header
  	}
  }
</script>
<style>
	
</style>