<template>
    <div id="header" >
        <div class="container">
            <div class="tab">
                <!-- logo -->
                <div class="header_logo">
                </div>
                <!-- search -->
                <div class="search">
                    <input type="text" placeholder="搜索食谱/食材">
                    <!-- seach_btn -->
                    <div class="btn" title="搜索"></div>
                </div>
                <!-- nav -->
                <div class="nav" >
                    <div class="item" @click="change(0)" ><span  :class="navPage==0?'active':'' " >首页</span></div>
                    <div class="item" @click="change(1)" ><span  :class="navPage==1?'active':'' ">食谱</span></div>
                    <div class="item" @click="change(2)" ><span  :class="navPage==2?'active':'' " >贝太书刊</span></div>
                    <div class="item" @click="change(3)" ><span  :class="navPage==3?'active':''  ">厨房故事</span></div>
                    <div class="item" @click="change(4)" ><span  :class="navPage==4?'active':''  " >试用大队</span></div>
                </div>
                <!-- login -->
                <div class="login" @click="loginClick">登录/注册</div>
            </div>
        </div>
        <login></login>
    </div>
</template>
<script>
//引入登录注册
import Login from "./Login.vue";
export default {
    data(){
        return {
        }
    },created(){
        window.onscroll=()=>{
         var header=document.getElementById("header")
           if(this.navPage!=1 && this.navPage!=3){
               if(document.documentElement.scrollTop>400 ){             
               header.className="tab1"
                }else{
               header.className="tab2"
                }
           }
        }
    },components:{
        "login":Login
    },methods:{
        loginClick(e){
           var login=document.querySelector('div.login_container');
           login.style.display="block";
        },
        change(i){
            this.$emit("change",i)
        }
    },props:{
        navPage:{default:""}
    }
}
</script>
<style scoped>
    div.login{
        line-height:80px;
        cursor: pointer;
    }
    div.login:hover{
        font-weight:600;
    }
   div.tab1>div.container{
        position: fixed;
        z-index:999;
        top:0;
        background: #fff;
        border-bottom: 1px solid #eee;
        height:80px;
        width:100%;
    }
    div.tab2>div.container{
        position: fixed;
        z-index:999;
        background:linear-gradient(-180deg,rgba(0,0,0,.2),transparent);
        height:80px;
        width:100%;
    }
    div.tab1>div.container>div.tab{
        color:#272b2c;
        width:960px;
        height:80px;
        margin:0 auto;
        font-size:14px;
        display:flex;
        position: relative;
    }
    div.tab2>div.container>div.tab{
        color:#fff;
        width:960px;
        height:80px;
        margin:0 auto;
        font-size:14px;
        display:flex;
        position: relative;
    }
    
   div.tab1>div.container>div.tab>div.header_logo{
        background:url("http://qn.xqgrwz.cn/indexlogo2.png") no-repeat 0/80px;
        cursor:pointer;
        width:80px;
        height:80px;
        margin-right:30px;
        transition: all .3s;
    }
    div.tab2>div.container>div.tab>div.header_logo{
        background:url("http://qn.xqgrwz.cn/indexlogo.png") no-repeat 0/80px;
        cursor:pointer;
        width:80px;
        height:80px;
        margin-right:30px;
        transition: all .3s;
    }
    div.tab1>div.container>div.tab>div.search{
        width:345px;
        box-shadow:0 2px 6px 2px rgba(0,0,0,.06);
        height:48px;
        margin:18px 0 14px;
        border-radius:100px;
        display:flex;
        transition:all .3s;
    }
    div.tab2>div.container>div.tab>div.search{
        width:345px;
        box-shadow:0 2px 6px 2px rgba(0,0,0,.06);
        background-color:transparent;
        height:48px;
        margin:18px 0 14px;
        border-radius:100px;
        opacity: 0;
        display:flex;
        transition:all .3s;
    }
    div.search>input{
        outline: none;
        background-color:transparent;
        border:0;
        flex:1;
        height: 20px;
        padding: 14px 0 14px 20px;
    }
    div.search>div.btn{
        flex:0 52px;
        height:48px;
        background:url("http://qn.xqgrwz.cn/search.png") no-repeat 15px/18px;
        cursor: pointer;
    }
    div.nav{
        margin-left:30px;
        display:flex;
        letter-spacing: 1px;
        position: relative;
    }
    div.item{
        line-height:80px;
        margin-right:33px;
        cursor: pointer;
        position: relative;
    }
    div.tab1>div.container>div.tab>div.nav>div.item>span.active{
        border-bottom: 1.5px solid #272b2c;
        padding-bottom: 14px;
        font-weight:600;
        position:relative;
    }
    div.tab2>div.container>div.tab>div.nav>div.item>span.active{
        border-bottom: 1.5px solid #fff;
        padding-bottom: 14px;
        font-weight:600;
        position:relative;
    }
    div.item:hover{
        font-weight:600;
    }
    div.item>span.active2{
        border-bottom: 1.5px solid #fff;
        padding-bottom: 14px;
        font-weight:600;
        position:relative;
    }
</style>

