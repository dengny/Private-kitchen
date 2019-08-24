<template>
    <div class="login_container" @click="loginClose">
        <!-- 登录 -->
        <div :class="page==0?'login_box':'hide'">
            <!-- 关闭按钮 -->
            <div class="login_close" title="关闭" @click="loginClose">
            </div>
            <!-- 登录标签 -->
            <div class="login_title">
                登录私家厨房
            </div>
            <!--手机号码 -->
            <div class="login_phone" >
                <input v-model="login_phone" type="text" placeholder="请输入手机号">
            </div>
            <!-- 账号密码 -->
            <div class="login_password">
                <input v-model="login_password" :type="show?'password':'text'" placeholder="请输入密码">
                <!-- 显示密码隐藏密码 按钮-->
                <div class="show" @click="show?show=false:show=true" :style="show?`background:url('http://qn.xqgrwz.cn/password_show.png') no-repeat 50%/20px`:`background:url('http://qn.xqgrwz.cn/password_hide.png') no-repeat 50%/20px`"></div>
            </div>
            <!-- 登录按钮 -->
            <div class="login_btn" @click="user_login" :class="check1?'true':''">
                登录
            </div>
            <!-- 登录底部 -->
            <div class="login_footer">
                还没有账号？<a href="javascript:;" @click="page=1">注册私家厨房</a>
            </div>
        </div>
        <!-- 注册 -->
        <div :class="page==1?'login_box':'hide'">
            <!-- 返回上一层 -->
            <div class="login_prev" title="返回" @click="page--">
            </div>
            <!-- 关闭按钮 -->
            <div class="login_close" title="关闭" @click="loginClose">
            </div>
            <!-- 标题 -->
            <div class="login_title">
                欢迎加入私家厨房
            </div>
            <!--手机号码 -->
            <div class="login_phone" >
                <input type="text" v-model="reg_phone" placeholder="请输入手机号">
            </div>
            <div class="login_password">
                <input :type="show?'password':'text'" v-model="reg_password" placeholder="请输入密码">
            </div>
            <div class="login_password">
                <input :type="show?'password':'text'" v-model="reg_cpassword" placeholder="请确认密码">
                <!-- 显示密码隐藏密码 按钮-->
                <div title="显示/隐藏密码" class="show" @click="show?show=false:show=true" :style="show?`background:url('http://qn.xqgrwz.cn/password_show.png') no-repeat 50%/20px`:`background:url('http://qn.xqgrwz.cn/password_hide.png') no-repeat 50%/20px`"></div>
            </div>
            <!-- 注册按钮 -->
            <div class="login_btn" @click="user_reg" :class="check2?'true':''">
                注册
            </div>
            <!-- 注册底部 -->
            <div class="reg_footer">
                <p>已阅读并同意以下协议</p>
                <a href="http://page.beitaichufang.com/H5InApp/privacyAgreement.html">《贝太厨房使用协议》及《隐私政策》</a>
            </div>
        </div>
        <!-- 注册验证码 -->
        <div :class="page==2?'login_box2':'hide'">
            <!-- 返回上一层 -->
            <div class="login_prev" title="返回" @click="page--">
            </div>
            <!-- 关闭按钮 -->
            <div class="login_close" title="关闭" @click="loginClose">
            </div>
            <!-- 标题标签 -->
            <div class="login_title">
                欢迎加入私家厨房，1分钟时间过个小测试吧
            </div>
            <div class="reg_text">
                <img src="http://qn.xqgrwz.cn/reg_text.png" alt="">
            </div>
            <!-- 加载 -->
            <div class="loading" :class="loading?'':'hide'">
                <img src="http://qn.xqgrwz.cn/loading.gif" alt="">
            </div>
            <!-- 内容选择 -->
            <div class="reg_img" :class="loading?'hide':''">
                <ul @click="reg_img_check">
                    <li v-for="(elem,i) of reg_img" :key=i :data-cake="elem.isCake">
                        <img :src="elem.cakeImg" alt="">
                        <div class="reg_item"></div>
                    </li>
                </ul>
            </div>
            <!-- 下一步 -->
            <div class="login_btn true" @click="next">
                下一步
            </div>
        </div>
        <!-- 提示信息 -->
        <div class="login_message">
            <i class="err"></i><span v-text="message"></span>
        </div>
    </div>
</template>
<script>
//设置正则表达式
//手机号码验证
const user_reg=/^[1][3-8]\d{9}$/
//密码格式验证
const upwd_reg=/^[a-z\d]{8,12}$/i
export default {
    data(){
        return {
            show:true,
            page:0,
            message:"1",
            login_phone:"",
            login_password:"",
            reg_phone:"",
            reg_password:"",
            reg_cpassword:"",
            login_btn:true,
            reg_btn:true,
            reg_img:[],
            loading:true
        }
    },
    methods:{
        // 验证选择图片是否正确
        check3(){
            var lis=document.querySelectorAll("div.reg_img>ul>li.on")
            var i=0;
            for(var elem of this.reg_img){
                if(elem.isCake){
                    i++
                }
            }
            var n=0;
            for(var elem of lis){
               if(!parseInt(elem.getAttribute("data-cake"))){
                   return false;
               }
               n++
            }
            return n==i
        },
        //下一步
        next(){
            if(this.check3()){

            }else{
                this.message="图片验证错误，请重试"
                this.message1()
                this.get_img()
            }
        },
        loginClose(e){
            if(e.target.className=='login_container'||e.target.className=='login_close'){
                 var login=document.querySelector('div.login_container');
                 login.style.display="none";
                 this.page=0;
            }
        },
        // 提示信息显示方法
        message1(i){
            var time
            var msg=document.querySelector('div.login_message')
            msg.style.opacity="1"
            msg.style.top="100px"
            if(i==1){
                this.login_btn=false
            }else if(i==2)
            {
                this.reg_btn=false
            }
            time=setTimeout(()=>{
                    msg.style.opacity="0"
                    msg.style.top="0"
                    if(i==1){
                        this.login_btn=true
                    }else if(i==2)
                    {
                        this.reg_btn=true
                    }
                        clearTimeout=time
                    },3000)
        },
        //登录验证方法
        user_login(){
            //如果验证正确
            if(this.check1){

            }else{
               //如果不正确提示
                if(!user_reg.test(this.login_phone) && this.login_btn){
                    this.message="手机号码格式不正确"
                    this.message1(1)
                }else if(!upwd_reg.test(this.login_password) && this.login_btn){
                    this.message="请输入8-12位字母或数字格式的密码"
                    this.message1(1)
                }
            }
        },
        //验证注册方法
        user_reg(){
            if(this.check2){
                this.page=2;
                this.get_img();
            }else{
                var msg=document.querySelector('div.login_message')
                var time
               //如果不正确提示
                if(!user_reg.test(this.reg_phone) && this.reg_btn){
                    this.message="手机号码格式不正确"
                    this.message1(2)
                }else if(!upwd_reg.test(this.reg_password) && this.reg_btn){
                    this.message="请输入8-12位字母或数字格式的密码"
                    this.message1(2)
                }else if(!(this.reg_password==this.reg_cpassword) && this.reg_btn){
                    this.message="两次输入密码不一致"
                    this.message1(2)
                }
            }
        },
        //获取验证码方法
        get_img(){
            this.loading=true;
            this.axios.get('/user/img').then(result=>{
                this.reg_img=result.data
            })
            var lis=document.querySelectorAll("div.reg_img>ul>li.on")
            for(var elem of lis){
                elem.className=""
            }
            var time=setTimeout(()=>{
                this.loading=false;
                clearTimeout(time)
            },1500)
        },
        reg_img_check(e){
            if(e.target.nodeName=="IMG"||e.target.nodeName=="DIV"){
                var li=e.target.parentNode
                if(li.className=="on"){
                li.className=""
                }else{
                li.className="on"
                }
            }
        }
    },computed:{
        // 验证登录
        check1(){
            var phone=user_reg.test(this.login_phone)
            var upwd=upwd_reg.test(this.login_password)
            return phone&&upwd
        },
        //验证注册
        check2(){
            var phone=user_reg.test(this.reg_phone)
            var upwd=upwd_reg.test(this.reg_password)
            var cpwd=this.reg_password==this.reg_cpassword
            return phone && upwd && cpwd
        },

    },created(){
        this.get_img()
    }
}
</script>
<style scoped>
    .reg_item{
        box-sizing:border-box;
        width:18px;
        height:18px;
        border:2px solid #fff;
        border-radius:50%;
        z-index:19;
        position:absolute;
        top:7px;
        right:7px;
    }
    li.on>div.reg_item{
        background:#d8316c;
    }
    .reg_img{
        width:324px;
        margin:0 auto;
        overflow:hidden;
        position:relative;
    }
    .loading{
        height:224px;
        position:relative;
    }
    .loading>img{
        position:absolute;
        left:50%;
        top:50%;
        transform:translate(-50%,-50%);
    }
    .reg_img>ul{
        position:relative;
        display:flex;
        flex-flow:wrap;
        justify-content: space-between;
    }
    .reg_img>ul>li{
        width:100px;
        height:100px;
        position:relative;
        margin-top:12px;
    }
    .reg_img>ul>li>img{
        width:100%;
    }
    .login_message{
        position: fixed;
        top:0;
        background-color:#fef0f0;
        border-color:#fde2e2;
        left:50%;
        transform: translate(-50%);
        border:1px solid #ebeef5;
        width:380px;
        border-radius:4px;
        overflow: hidden;
        box-sizing: border-box;
        padding:15px 15px 15px 20px;
        text-align:center;
        font-size:14px;
        opacity: 0;
        transition:all .8s;
    }
    .err{
        background:url('http://qn.xqgrwz.cn/err.png') no-repeat 50%/32px;
        width:16px;
        height:16px;
        display:inline-block;
        vertical-align: middle;
        margin-right: 10px;
    }
    .true{
        background-color:#d8316c !important;
    }
    .reg_text{
        margin-top:12px;
        text-align:center;
        height:20px;
    }
    .reg_text>img{
        height: 16px;
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
    }
    .login_message>span{
        vertical-align: middle;
        color:rgb(252,53,93);
    }
    .reg_footer{
        color:#b5b8bb;
        text-align:center;
        margin-top:20px;
        margin-bottom:48px;
        font-size:14px;
        line-height:20px;
    }
    .reg_footer>a{
        color:#292d2d;
    }
    .hide{
        display:none;
    }
    .login_container{
        position:fixed;
        display: none;
        z-index: 9999;
        background-color:rgba(0,0,0,.5);
        top:0;
        left:0;
        height:100vh;
        width:100%;
    }
    .login_box{
        position:absolute;
        width:420px;
        left:50%;
        top:50%;
        border-radius:3px;
        background-color:#fff;
        box-shadow:0 2px 6px 0 rgba(0,0,0,.2);
        transform:translate(-50%,-50%);
    }
    .login_box2{
        position:absolute;
        width:489px;
        left:50%;
        padding-bottom:50px;
        top:50%;
        border-radius:3px;
        background-color:#fff;
        box-shadow:0 2px 6px 0 rgba(0,0,0,.2);
        transform:translate(-50%,-50%);
    }
    .login_title{
        font-size:20px;
        color:#272b2c;
        font-weight:800;
        margin-top:60px;
        text-align:center;
    }
    .login_close{
        background:url('http://qn.xqgrwz.cn/login_close.png') no-repeat 50%/20px;
        width:20px;
        height:20px;
        position:absolute;
        top:30px;
        right:24px;
        cursor: pointer;
    }
    .login_close:hover{
        background:url('http://qn.xqgrwz.cn/login_close_hover.png') no-repeat 50%/20px;
    }
    .login_prev{
        background:url('http://qn.xqgrwz.cn/login_prev.png') no-repeat 50%/20px;
        width:20px;
        height:20px;
        position:absolute;
        top:30px;
        left:24px;
        cursor: pointer;
    }
    .login_prev:hover{
        background:url('http://qn.xqgrwz.cn/login_prev_hover.png') no-repeat 50%/20px;
    }
    .login_password,.login_phone{
        margin: 36px auto 0;
        width:268px;
        height:35px;
        border-bottom:1px solid #b5b8bb;
        line-height:34px;
        position: relative;
    }
    div.login_password>input,div.login_phone>input{
        padding:6px 0;
        width:100%;
        font-size:14px;
        color:#272b2c;
        outline:none;
        border:0;
    }
    div.login_password>div.show{
        cursor: pointer;
        position:absolute;
        top:6px;
        right:0px;
        width:20px;
        height:20px;
    }
    .login_btn{
        cursor:pointer;
        margin:40px auto 0;
        width:268px;
        height:40px;
        line-height:40px;
        text-align:center;
        font-size:17px;
        border-radius: 3px;
        color:#fff;
        background-color:#d2d2d2;
    }
    .login_footer{
        width:100%;
        height:52px;
        line-height:52px;
        text-align:center;
        color:#b5b8bb;
        font-size:14px;
        font-weight:300;
        margin:56px auto 0;
        background-color:#f1f1f1;
    }
    div.login_footer>a{
        color:#272b2c;
        font-weight:500;
    }
</style>
