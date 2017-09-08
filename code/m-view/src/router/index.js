import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/pages/Home/Home.vue'
import Article from '@/pages/Article/Index.vue'
import Write from '@/pages/Write/Write.vue'
import My from '@/pages/My/Index.vue'
import MyPost from '@/pages/My/MyPost.vue'
import MySold from '@/pages/My/MySold.vue'
import MyLike from '@/pages/My/MyLike.vue'
import MyStore from '@/pages/My/MyStore.vue'
import MyBuy from '@/pages/My/MyBuy.vue'
import Login from '@/pages/Login/Login.vue'
import Register from '@/pages/Register/Register.vue'
import PerfectRegister from '@/pages/Register/PerfectRegister.vue'
import VerifyUser from '@/pages/Register/VerifyUser.vue'
import Index from '@/pages/Index/Index.vue'
import Pool from '@/pages/Pool/Index.vue'
import PoolUser from '@/pages/Pool/PoolUser.vue'
import News from '@/pages/News/Index.vue'
import Chat from '@/pages/News/Chat.vue'
import Send from '@/pages/Send/Index.vue'


Vue.use(Router)

export default new Router({
  mode: 'history',
  scrollBehavior: () => ({
    y: 0
  }),
  routes: [
    { path: '/home', component: Home },
    { path: '/article/:id', component: Article },
    { path: '/write', component: Write },
    { path: '/my/', component: My },
    { path: '/my/post', component: MyPost },
    { path: '/my/sold', component: MySold },
    { path: '/my/buy', component: MyBuy },
    { path: '/my/like', component: MyLike },
    { path: '/my/store', component: MyStore},
    { path: '/login', component: Login },
    { path: '/register', component: Register },
    { path: '/perfect_register', component: PerfectRegister },
    { path: '/pool', component: Pool },
    { path: '/pool/users', component: PoolUser },
    { path: '/verify', component: VerifyUser },
    { path: '/news', component: News },
    { path: '/news/chat', component: Chat },
    { path: '/send', component: Send },
    { path: '/', redirect: '/index' },
    { path: '*', redirect: '/index' },
    { path: '/index', component: Index }, // design首页
  ]
})
