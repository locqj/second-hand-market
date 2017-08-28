<template lang="html">
  <div id="app">
    <!--你也可以在其他地方使用<router-view></router-view>来创建嵌套路由，详见vue-router文档-->
    	<router-link to="/foo">Go to Foo</router-link>
      <router-link to="/bar">Go to Bar</router-link>
      <div>User {{ $route.params.id }}</div>
    <router-view></router-view>
  </div>
</template>