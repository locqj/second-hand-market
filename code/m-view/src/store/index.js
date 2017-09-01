/**
 * Created by Administrator on 2017/5/3.
 */
import Vue from 'vue'
import Vuex from 'vuex'
import mutations from './mutations'
import actions from './actions'

Vue.use(Vuex)

export default new Vuex.Store({
  modules: {
    mutations
  },
  actions
})
