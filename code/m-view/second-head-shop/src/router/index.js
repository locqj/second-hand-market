import Vue from 'vue';
import Router from 'vue-router';

import Test from '../components/App.vue';



Vue.use(Router);

export default new Router({
    linkActiveClass: 'active',
    routes: [
    {
      path: '/foo/:id',
      name: 'Test',
      component: Test
    }
    ]
});
