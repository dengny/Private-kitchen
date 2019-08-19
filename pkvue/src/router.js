import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
// 引入轮播图模块
import Carousel from './components/carousel/Carousel.vue'
//引入菜单组件
import Menu from './views/Menu.vue'
//引入杂志详情组件
import Book from './views/Book.vue'
import MagazineDetail from './views/MagazineDetail.vue'
import Paging from './components/Paging.vue' //测试
Vue.use(Router)

export default new Router({
    routes: [
        //引入轮播图模块
        {
            path: "/Carousel",
            component: Carousel
        },
        {
            path: '/menu',
            name: 'menu',
            component: Menu
        },
        {
            path: '/magazineDetail',
            name: 'magazineDetail',
            component: MagazineDetail
        },
        {
            path: '/paging',
            name: 'paging',
            component: Paging
        },
        {
            path: '/tbBook',
            name: 'btbBook',
            component: Book
        },
        {
            path: '/',
            name: 'home',
            component: Home
        },
        {
            path: '/about',
            name: 'about',
            // route level code-splitting
            // this generates a separate chunk (about.[hash].js) for this route
            // which is lazy-loaded when the route is visited.
            component: () =>
                import ( /* webpackChunkName: "about" */ './views/About.vue')
        }
    ]
})