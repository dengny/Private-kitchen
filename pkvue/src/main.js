import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//进入axios第三方ajax模块
import axios from "axios"
//配置axios基础路径
axios.defaults.baseURL = "http://127.0.0.1:3000/"
    //配置axios 保存session信息
axios.defaults.withCredentials = true;
//将axios注册vue实例总
//由于axios不支持use将实例添加vue原型
Vue.prototype.axios = axios
    //导入MyHeader组件
import MyHeader from './components/MyHeader'
//使用Vue.component()方法注册MyHeader全局组件。
Vue.component("my-header", MyHeader);
//导入MyFooter组件
import MyFooter from './components/MyFooter'
//使用Vue.component()方法注册MyFooter全局组件。
Vue.component("my-footer", MyFooter);
Vue.config.productionTip = false

new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')