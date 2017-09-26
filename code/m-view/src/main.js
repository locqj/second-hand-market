// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import router from './router'
import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
import axios from 'axios'
import '@/assets/js/resize.js'
import store from './store'
import Loading from './components/Loading'
import App from './App'

Vue.use(MintUI)
Vue.use(Loading)

      // 页面刷新时，重新赋值token
if (window.localStorage.getItem('token')) {
  store.dispatch('DOLOGIN', window.localStorage.getItem('token'))//调用DOLOGIN的store
}

router.beforeEach((to, from, next) => {
  if (to.matched.some(r => r.meta.requireAuth)) {
    console.log(window.localStorage.getItem('token'))
    console.log(store.state.mutations.token)
    // console.log(store.state.token+"asdasdasdasdasdsadsadsadsads")
    if (store.state.mutations.token) {
      next();
    } else {
      next({
        path: '/login'
        // query: {redirect: to.fullPath}
      })
    }
  }
  else {
    next()
  }
})

// axios.defaults.baseURL = 'http://localhost:8000'  // 配置axios默认的baseURL
// axios.defaults.headers['Content-Type'] = 'application/x-www-form-urlencoded'; //都变成string了臭嗨
/*axios 拦截器*/
axios.interceptors.request.use(function (config) {
  store.dispatch('SHOWLOADING')
  if (store.state.mutations.token) {  // 判断是否存在token，如果存在的话，则每个http header都加上token
    config.headers.Authorization = `token ${store.state.token}`;
  }
  return config
}, function (error) {
  return Promise.reject(error)
})

axios.interceptors.response.use(function (response) {
  store.dispatch('HIDELOADING')
  return response
}, function (error) {
  if (error.response) {
    switch (error.response.status) {
      case 401:
        // 返回 401 清除token信息并跳转到登录页面
        store.dispatch('DOLOGOUT')
        router.replace({
          path: 'login',
          // query: {redirect: router.currentRoute.fullPath}
        })
    }
  }
  return Promise.reject(error)
})


Vue.prototype.$http = axios
Vue.config.productionTip = false
/* eslint-disable no-new */
new Vue({
  el: '#app',
  store,
  router,
  template: '<App/>',
  components: { App }
})
