import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//进入axios第三方ajax模块
import axios from "axios"
// import axios from 'axios'
//配置axios基础路径
axios.defaults.baseURL = "http://127.0.0.1:3000/"
    //配置axios 保存session信息
axios.defaults.withCredentials = true;
//将axios注册vue实例总
//由于axios不支持use将实例添加vue原型
Vue.prototype.axios = axios
import MyHeader from './components/MyHeader'

Vue.component("my-header", MyHeader);
Vue.config.productionTip = false

new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')