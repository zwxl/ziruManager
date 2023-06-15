import Vue from 'vue'
import VueRouter from 'vue-router'
import index from '../views/index.vue'
import zufang from '../components/zufang.vue'
import login from '../components/Login.vue'
import UserManager from '../components/UserManager.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'login',
    component: login
  },
  {
    path: '/login',
    name: 'login',
    component: login
  },
  {
    path: '/index',
    name: 'index',
    component: index
  },
  {
    path: '/zufang',
    name: 'zufang',
    component: zufang
  },
  {
    path: '/userManager',
    name: 'UserManager',
    component: UserManager
  },
  {
    path: '/about',
    name: 'About',
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
]

const router = new VueRouter({
  routes
})

export default router
