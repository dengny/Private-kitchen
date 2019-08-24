<template>
    <section>
        <!-- 一日三餐 切换 -->
        <div class="meals_change">
            <!-- 菜单提示  -->
            <div class="meals_title">
                一日三餐·<span v-text="page==0?'早上好':page==1?'中午好':'晚上好'"></span>
            </div>
            <!-- 菜单导航 -->
            <ul  class="meals_nav">
                <li v-for="(elem,i) of nav" :key=i  @click="change(i)"><span :class="page==i?'on':''">{{elem.navTitle}}</span></li>
            </ul>
            <!-- 菜单容器 -->
            <div class="meals_container">
                <!-- 菜单内容 -->
                <ul  id="nav1" class="meals_content">
                    <li v-for="(elem,i) of recipe" :key=i v-show="page==elem.rClass">
                        <div class="item">
                            <img :src="elem.rImg" alt="">
                        </div>
                        <h2>{{elem.rTitle}}</h2>
                        <h4>{{elem.rSubTitle}}</h4>
                    </li>
                </ul>
            </div>
            <!-- 分页按钮 -->
            <div id="meals_prev" class="prev" @click="meals_prev"></div>
            <div id="meals_next" class="next" @click="meals_next"></div>
        </div>
        <!-- 烘焙之旅 切换 -->
        <div class="meals_change">
            <!-- 标题 -->
            <div  class="meals_title">
                探寻·烘焙之旅
            </div>
            <!-- 标题介绍 -->
            <div class="meals_subtitle">
                美味且经过试作保障的烘焙食谱
            </div>
            <!-- 探寻之旅内容-->
            <div  class="meals_container">
                <!-- 主要内容 -->
                <ul id="nav2" class="meals_content">
                    <li v-for="(elem,i) of meal_video" :key=i >
                        <div class="video">
                            <div class="play"></div>
                            <img :src="elem.rImg" alt="">
                        </div>
                        <h2>{{elem.rTitle}}</h2>
                        <h4>{{elem.rSubTitle}}</h4>
                    </li>
                </ul>
            </div>
            <!-- 按钮切换 -->
            <!-- 分页按钮 -->
            <div id="video_prev" class="prev" @click="video_prev"></div>
            <div id="video_next" class="next" @click="video_next"></div>
        </div>
        <!-- 广告 -->
        <div class="banner">
        </div>
        <!-- 电子书杂志 -->
        <div>
            <!-- 杂志 -->
            <div class="meals_change">
                <div class="meals_title">
                    贝太厨房·杂志月刊
                </div>
                <div class="meals_subtitle">
                    专业团队打造且世界销量靠前的家庭美食指南
                </div>
                <div class="meals_container">
                    <!-- 列表内容展示 -->
                    <ul class="meals_content">
                        <li v-for="(elem,i) of magazine" :key=i >
                            <div class="ebook">
                                <img :src="elem.mImg" alt="">
                            </div>
                            <h2>{{elem.mTitle}}</h2>
                            <h4>{{elem.mNumber}}</h4>
                        </li>
                    </ul>
                </div>
                <!-- 查看更多 -->
                <div class="more">
                    查看更多
                </div>
            </div>
            <!-- 电子书 -->
            <div class="meals_change">
                <div class="meals_title">
                    贝太书店
                </div>
                <div class="meals_subtitle">
                    为你打造美味家庭烹饪的通关秘籍
                </div>
                <div class="meals_container">
                    <!-- 列表内容展示 -->
                    <ul class="meals_content">
                        <li v-for="(elem,i) of ebook" class="ebook" :key=i >
                            <div class="ebook">
                                <img :src="elem.eImg" alt="">
                            </div>
                            <h2>{{elem.eTitle}}</h2>
                        </li>
                    </ul>
                </div>
                <!-- 查看更多 -->
                <div class="more">
                    查看更多
                </div>
            </div>
        </div>
        <!-- 厨房故事 -->
        <div class="meals_change">
            <div class="meals_title">
                厨房故事
            </div>
            <div class="meals_container">
                <!-- 列表内容展示 -->
                <ul class="meals_content">
                    <li v-for="(elem,i) of news" class="news" :key=i >
                        <div class="news">
                        <img :src="elem.nImg" alt="">
                        </div>
                        <h2>{{elem.nTitle}}</h2>
                        <h4 class="wrap">{{elem.nSubTitle}}</h4>
                    </li>
                </ul>
            </div>
            <!-- 查看更多厨房故事 -->
            <div class="kitchen_more">
                查看更多厨房故事
            </div>
        </div>
    </section>
</template>
<script>
export default {
    data(){
        return {
            page2:1,
            page:0,
            page3:1,
            //按钮开关阻挡
            meals_state:true,
            //模拟数据
            nav:[
                {navTitle:'早餐'},
                {navTitle:'午餐'},
                {navTitle:'晚餐'}
            ],
            recipe:[],
            meal_video:[],
            ebook:[],
            magazine:[],
            news:[]
        }
    },
    methods:{
        //获取视频数据
        get_video(){
            this.axios.get('/search/recipe/video').then(result=>{
                this.meal_video=result.data
            })
        },
        // 获取一日三餐数据
        get_day(){
            this.axios.get('/search/recipe/day').then(result=>{
                this.recipe=result.data
            })
        },
        //获取周刊杂志数据 随机推荐5个
        get_magazine(){
            this.axios.get('/search/magazine/portion').then(result=>{
                this.magazine=result.data
            })
        },
        //获取周刊电子书数据 随机推荐5个
        get_ebook(){
            this.axios.get('/search/ebook/portion').then(result=>{
                this.ebook=result.data
            })
        },
        //获取新闻数据 随机推3个
        get_news(){
            this.axios.get('/search/news/portion').then(result=>{
                this.news=result.data
            })
        },
        // 一日三餐导航切换
        change(i){
            this.page=i;
            var ul=document.getElementById('nav1')
            ul.style.marginLeft=0;
            this.page2=1;
            this.init();
        },
        //菜单上一页
        meals_prev(){
           if(this.meals_state){
            if(this.page2!=1){
                 this.state();
                this.page2--
                this.meals_change()
                var ul=document.getElementById('nav1')
                var left=parseInt(window.getComputedStyle(ul,null).marginLeft)+976
                ul.style.marginLeft=left+'px'
            }
           }
        },
        //菜单下一页
        meals_next(){
            if(this.meals_state){
                if(this.page2<=this.length){
                     this.state();
                    this.page2++
                    this.meals_change()
                    var ul=document.getElementById('nav1')
                    var left=parseInt(window.getComputedStyle(ul,null).marginLeft)-976
                    ul.style.marginLeft=left+'px'
                }
            }
        },
        //做法视频上一页
        video_prev(){
           if(this.meals_state){
               console.log(this.page3)
            if( this.page3!=1){
                this.state();
                this.page3--
                this.video_change()
                var ul=document.getElementById('nav2')
                var left=parseInt(window.getComputedStyle(ul,null).marginLeft)+976
                ul.style.marginLeft=left+'px'
            }
           }
        },
        //做法视频下一页
        video_next(){
            if(this.meals_state){
                if(this.page3<=this.length2){
                    this.state();
                    this.page3++
                    this.video_change()
                    var ul=document.getElementById('nav2')
                    var left=parseInt(window.getComputedStyle(ul,null).marginLeft)-976
                    ul.style.marginLeft=left+'px'
                }
            }
        },
        //切换时更变按钮的样式
        meals_change(){
            var length=this.length   
            var next=document.getElementById('meals_next')
            var prev=document.getElementById('meals_prev')
            if(this.page2==1){
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_active.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_normal.png') no-repeat 50%/24px"
            }else if(this.page2<=length){
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_active.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_active.png') no-repeat 50%/24px"
            }else if(this.page2>length){
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_normal.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_active.png') no-repeat 50%/24px"
            }
        },
        //切换时更变按钮的样式
        video_change(){
            var length=this.length2
            var next=document.getElementById('video_next')
            var prev=document.getElementById('video_prev')
            if(this.page3==1){
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_active.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_normal.png') no-repeat 50%/24px"
            }else if(this.page3<=length){
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_active.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_active.png') no-repeat 50%/24px"
            }else if(this.page3>length){
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_normal.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_active.png') no-repeat 50%/24px"
            }
        },
        //初始化按钮的样式
        init(){
            //初始化按钮数据
            var next=document.getElementById('meals_next')
            var prev=document.getElementById('meals_prev')
            if(this.length>0){
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_active.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_normal.png') no-repeat 50%/24px"
            }else{
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_normal.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_normal.png') no-repeat 50%/24px"
            }
        },init2(){
            //初始化按钮数据
            var next=document.getElementById('video_next')
            var prev=document.getElementById('video_prev')
            if(this.length2>0){
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_active.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_normal.png') no-repeat 50%/24px"
            }else{
                next.style.background="url('http://qn.xqgrwz.cn/meal_next_normal.png') no-repeat 50%/24px"
                prev.style.background="url('http://qn.xqgrwz.cn/meal_prev_normal.png') no-repeat 50%/24px"
            }
        },
        //按钮装态
        state(){
            this.meals_state=false;
            var Time=setTimeout(()=>{
                        this.meals_state=true;
                        clearTimeout(Time);
            },800)
        }
    },
    computed:{
        length(){
            var i=0
            for(var elem of this.recipe){
                if(elem.rClass==this.page){
                    i++
                }
            }
            i=parseInt(i/5)
            console.log(i)
            return i
        },
        length2(){
            var i=0
            for(var elem of this.meal_video){
                i++
            }
            i=parseInt(i/5)
            return i
        }
    },
    updated(){
        this.init();
        this.init2();
    },
    created(){
        this.get_ebook(),
        this.get_magazine(),
        this.get_news(),
        this.get_day(),
        this.get_video()
    }
}
</script>
<style scoped>
    section{
        width:960px;
        margin:0 auto;
        padding-bottom:80px;
    }
    div.meals_subtitle{
        color:#272b2c;
        margin-top:10px;
        font-weight:500;
        font-size:17px;
    }
    div.banner{
        cursor:pointer;
        margin:0 auto;
        height:220px;
        position:relative;
        margin-top:80px;
        background-image: url("https://app-file.beitaichufang.com/img/EEEFC0ADD5CCD6E20AC4214923D27FBC/20190626/5ksZNYbPp8.png");
        background-repeat: no-repeat;
        background-size: cover;
        background-position: 50%;
    }
    section>div.meals_change:first-child{
        margin:0 auto;
        position:relative;
        margin-top:80px;
    }
    div.meals_change{
        margin:0 auto;
        position:relative;
        margin-top:60px;
    }
    div.meals_change div.more{
        cursor:pointer;
        width:180px;
        height:44px;
        line-height:44px;
        color:#fff;
        font-size:17px;
        font-weight:500;
        border-radius:5px;
        margin-top:30px;
        text-align:center;
        background-color:#d8316c;
    }
    div.meals_container{
        overflow: hidden;
    }
    div.meals_title{
        font-size:24px;
        color:#272b2c;
        letter-spacing: -.4px;
        font-weight:800;
    }
    ul.meals_nav{
        margin-top:6px;
        display:flex;
        font-size:17px;
    }
    ul.meals_nav>li:not(:last-child){
        margin-right:20px;
    }
    ul.meals_nav>li>span{
        display:inline-block;
        font-size:17px;
        padding:10px 0;
        font-weight: 500;
        color:#272b2c;
    }
    ul.meals_nav>li>span.on{
        color: #d8316c;
        border-bottom: 2px solid #d8316c;
    }
    ul>li{
        cursor:pointer;
    }
    ul.meals_content{
        display:flex;

        margin-top:10px;
        transition:.8s;
    }
    ul.meals_content>li{
        width:228px;
        margin-right:16px;
        position:relative;
    }
    ul.meals_content>li.ebook{
        width:176px;
        margin-right:16px;
    }
    ul.meals_content>li.news{
        width:308px;
        margin-right:16px;
    }
    ul.meals_content>li:hover div>img{
        transform:scale(1.1,1.1)
    }
    ul.meals_content>li:hover div>div.play{
        transform:scale(1.1,1.1)
    }
    ul.meals_content>li>div.item{
        width:228px;
        height:228px;
        overflow: hidden;
        position: relative;
    }
    ul.meals_content>li>div.item>img{
        position:absolute;
        top:0;
        width:150%;
        left:-25%;
    }
    ul.meals_content>li>div.video{
        width:100%;
        height:128px;
        position: relative;
        overflow: hidden;
    }
    ul.meals_content>li>div.ebook{
        width:100%;
        height:224px;
        position: relative;
        overflow: hidden;
    }
    ul.meals_content>li>div.news{
        width:100%;
        height:206px;
        position: relative;
        overflow: hidden;
    }
    ul.meals_content>li>div.video>div.play{
        background:url("http://qn.xqgrwz.cn/play.png") no-repeat;
        background-size:100%;
        width:49px;
        height:32px;
        position:absolute;
        transition: .8s;
        z-index:2;
        top:50%;
        left:50%;
        margin-left:-24.5px;
        margin-top:-16px;
    }
    ul.meals_content>li>div>img{
        width:100%;
        transition:.8s;
    }
    ul.meals_content>li>h2{
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
        font-size: 17px;
        color: #272b2c;
        font-weight: 600;
        margin-top: 16px;
    }
    ul.meals_content>li>h4{
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
        font-size: 14px;
        color: #272b2c;
        font-weight: 300;
        margin-top: 6px;
    }
    ul.meals_content>li>h4.wrap{
        display: -webkit-box;
        height:40px;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        white-space: pre-wrap;
    }
    div.prev{
        cursor: pointer;
        width: 24px;
        height: 24px;
        position: absolute;
        z-index: 9;
        top: 50%;
        left: -38px;
    }
    div.next{
        cursor: pointer;
        width: 24px;
        height: 24px;
        position: absolute;
        z-index: 9;
        top: 50%;
        right: -38px;
    }
    div.kitchen_more{
        cursor: pointer;
        font-size:17px;
        position: relative;
        width:136px;
        height:24px;
        color:#d8316c;
        font-weight:800;
        margin-top:16px;
        line-height:24px;
    }
    div.kitchen_more::after{
        display:inline-block;
        position: absolute;
        content:"";
        background: url("http://qn.xqgrwz.cn/kitchen_more.png") no-repeat 50%/16px;
        width:16px;
        height:16px;
        bottom:2px;
        right:-20px;
    }
</style>
