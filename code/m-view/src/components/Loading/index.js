/**
 * Created by Administrator on 2017/5/3.
 */
const LoadingComponent = require('./Loading.vue')
const loading = {
  install: function (Vue) {
    Vue.component('loading', LoadingComponent)
  }
}
module.exports = loading
