<template>
    <div>
        <!-- 头部 -->
        <myheader :nav-page="navPage" v-on:change=change  :class="navPage==0?'tab2':
                                              navPage==1?'tab1':
                                              navPage==3?'tab1':
                                                         'tab2'"></myheader>
        <!-- 主要内容 -->
        <!-- 首页 -->
        <section :class="navPage==0?'':'hide'">
            <!-- 轮播组件 -->
            <carousel></carousel>
            <!-- 详细内容 -->
            <mealschange></mealschange> 
        </section>
        <!-- 食谱 -->
        <section :class="navPage==1?'':'hide'">
            <mymenu></mymenu>
        </section>
        <!-- 贝太书刊 -->
        <section :class="navPage==2?'':'hide'">
            <h1>贝太书刊</h1>
        </section>
        <!-- 私家厨房 -->
        <section :class="navPage==3?'':'hide'">
            <h1>私家厨房</h1>
        </section>
        <!-- 食谱 -->
        <section :class="navPage==4?'':'hide'">
            <h1>试用大队</h1>
        </section>
        <!-- 脚部 -->
        <footer>
            <myfooter></myfooter>
        </footer>
    </div>
</template>
<script>
// 引入页脚
import Footer from './footer/Footer.vue'
//引入首页切换菜单
import MealsChange from './change/MealsChange.vue'
//引入头部
import Header from "./header/Header.vue"
//引入轮播图
import Carousel from "./carousel/Carousel.vue"
//引入菜单组件
import Menu from "./menu/Menu.vue"
export default {
    data(){
        return{
            navPage:0,
        }
    },components:{
        "mealschange":MealsChange,
        'myheader':Header,
        'carousel':Carousel,
        'mymenu':Menu,
        'myfooter':Footer
    },methods:{
        change(i){
           this.navPage=i
        }
    },mounted(){
    },computed:{
    }
}
</script>
<style scoped>
    .hide{
        display:none;
    }
</style>

