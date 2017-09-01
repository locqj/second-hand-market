/**
 * Created by Administrator on 2017/5/3.
 */
import { GET_INDEX_ARTICLE, LOADMORE_ARTICLE, ROUTER_CHANGE, HIDELOADING, SHOWLOADING } from './types'
import axios from 'axios'

const state = {
  index_article: [],
  selected: '/home',
  footerHide: true,
  headerHide: true,
  showLoad: false
}

const mutations = {
  [GET_INDEX_ARTICLE] (state) {
    axios.get('http://localhost:3000/articles?_start=0&_end=10')
      .then(function (res) {
        state.index_article = res.data
      })
      .catch(function (err) {
        console.log(err)
      })
  },
  [LOADMORE_ARTICLE] (state) {
    axios.get('http://localhost:3000/articles?_start=10&_end=20')
      .then(function (res) {
        state.index_article.push(...res.data)
      })
      .catch(function (err) {
        console.log(err)
      })
  },
  [ROUTER_CHANGE] (state, path) {
    state.footerHide = true
    state.headerHide = true
    state.selected = path
    if (path.includes('/login') || path.includes('/register')) {
      state.footerHide = false
      state.headerHide = false
    } else if (path.includes('/article/')) {
      state.footerHide = false
    }
  },
  [HIDELOADING] (state) {
    state.showLoad = false
  },
  [SHOWLOADING] (state) {
    state.showLoad = true
  }
}

const getters = {
  index_article (state) {
    return state.index_article
  },
  selected (state) {
    return state.selected
  },
  footerHide (state) {
    return state.footerHide
  },
  headerHide (state) {
    return state.headerHide
  },
  showLoad (state) {
    return state.showLoad
  }
}

export default{
  state,
  mutations,
  getters
}
