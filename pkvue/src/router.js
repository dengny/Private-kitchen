import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
// 引入轮播图模块
import Carousel from './components/carousel/Carousel.vue'
//引入菜单切换组件
import MealsChange from './components/change/MealsChange.vue'
//引入头部
import Header from './components/header/Header.vue'
// 引入首页
import Index from './components/Index.vue'
Vue.use(Router)

export default new Router({
  routes: [
    //引入头部
    {
      path:"/Header",
      component:Header
    },
    //引入菜单切换组件
    {
      path:"/MealsChange",
      component:MealsChange
    },
    //引入轮播图模块
    {
      path:"/Carousel",
      component:Carousel
    },
    {
      path: '/',
      name: 'index',
      component: Index
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
