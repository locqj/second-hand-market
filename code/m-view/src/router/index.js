import Vue from 'vue'
import axios from 'axios'
import store from '../store'
import VueRouter from 'vue-router'
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
import Buy from '@/pages/Buy/Index.vue'



Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  scrollBehavior: () => ({
    y: 0
  }),

    routes: [
        { path: '/home', component: Home },
        { path: '/article/:id', component: Article },
        { path: '/write', component: Write },
        { 
            path: '/my/',
            component: My,
            meta: {
                requireAuth: true,  // 添加该字段，表示进入这个路由是需要登录的
            }
         },
        { path: '/my/post', component: MyPost },
        { path: '/my/sold', component: MySold },
        { path: '/my/buy', component: MyBuy },
        { path: '/my/like', component: MyLike },
        { path: '/my/store', component: MyStore},
        { path: '/login', component: Login },
        { path: '/register', component: Register },
        { path: '/register/perfect_register', component: PerfectRegister },
        { path: '/register/verify', component: VerifyUser },
        { 
            path: '/pool',
            component: Pool,
            meta: {
                requireAuth: true,  // 添加该字段，表示进入这个路由是需要登录的
            }

         },
        { 
            path: '/pool/users', 
            component: PoolUser,
            meta: {
                requireAuth: true,  // 添加该字段，表示进入这个路由是需要登录的
            }, 
    
        },
        { path: '/news', component: News, },
        { 
            path: '/news/chat',
            component: Chat,
            meta: {
                requireAuth: true,  // 添加该字段，表示进入这个路由是需要登录的
            }

         },
        { 
            path: '/send',
            component: Send,
            meta: {
                requireAuth: true,  // 添加该字段，表示进入这个路由是需要登录的
            }

         },
        { 
            path: '/buy', component: Buy,
            meta: {
                requireAuth: true,  // 添加该字段，表示进入这个路由是需要登录的
            }
        },
        { path: '/', redirect: '/index' },
        { path: '*', redirect: '/index' },
        { 
            path: '/index', component: Index, 
            meta: {
                requireAuth: true,  // 添加该字段，表示进入这个路由是需要登录的
            }
        }
    ]
});
