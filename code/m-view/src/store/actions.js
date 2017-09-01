/**
 * Created by Administrator on 2017/5/3.
 */
import * as types from './types'

export default{
  GET_INDEX_ARTICLE: ({commit}) => {
    commit(types.GET_INDEX_ARTICLE)
  },
  LOADMORE_ARTICLE: ({commit}) => {
    commit(types.LOADMORE_ARTICLE)
  },
  ROUTER_CHANGE: ({commit}, path) => {
    commit(types.ROUTER_CHANGE, path)
  },
  SHOWLOADING: ({commit}) => {
    commit(types.SHOWLOADING)
  },
  HIDELOADING: ({commit}) => {
    commit(types.HIDELOADING)
  }
}

