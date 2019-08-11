<template>
    <div>
        <!-- 轮播图盒子 -->
        <div class="container">
            <!-- 图片展示区 -->
            <ul>
                <li v-for="(elem,i) of json" :key=i  :class="i==mark?'on':''" :style="{background:`url(${elem.cImg}) no-repeat`,backgroundPosition:`50%`,backgroundSize:`cover`}">
                    <h2 v-cloak>{{elem.cName}}
                        <div>{{elem.cTitle}}</div>
                    </h2>
                    <h4 v-cloak>{{elem.cSubTitle}}</h4> 
                </li>
            </ul>
            <!-- 切换按钮 -->
            <div class="prev" @click="prev">
            </div>
            <div class="next" @click="next">
            </div>
            <!-- 进度条 -->
            <div class="progress_bar">
                <!-- 进度 -->
                <span :style="{width:`${span}px`}"></span>
            </div>
            <!-- 热门分类 -->
            <div class="hot">
                热门搜索：
                <a href="javascript:;" v-for="(elem,i) of hot" :key=i v-text="elem.title"></a>
            </div>
            <!-- 搜索功能 -->
            <search></search>
        </div>
    </div>
</template>
<script>
import Search from "./Search.vue"
export default {
    data(){
        return {
            mark:0,
            json:[],
            hot:[
                {title:"羊肉"},
                {title:"土豆"},
                {title:"白菜"},
                {title:"川菜"},
                {title:"火锅"}
            ],
            time:0
        }
    },
    methods:{
        //上一张
        prev(){
            clearInterval(this.time)
            this.mark--
            if(this.mark<0){
                this.mark=3
            }
            this.play()
        },
        //下一张
        next(){
            clearInterval(this.time)
            this.mark++
            if(this.mark>3){
                this.mark=0
            }
            this.play()
        },
        // 设置自动播放方法
        autoPlay(){
            this.mark++
            if(this.mark==4){
               this.mark=0
            }
        },
        // 播放的间隔
        play(){
            this.time=setInterval(this.autoPlay,6000)
        },
        //发送ajax请求获取数据
        list(){
            this.axios.get('/carousel').then(result=>{
                var arr=result.data
                this.json=arr
            })
            
        }
    },
    created() {
        this.play()
        this.list()
    },
    computed: {
        //设置span宽度的计算方法
        span(){
            var width=(this.mark+1)*60
            return width
        }
    },
    components:{
        "search":Search
    }
}
</script>
<style scoped>
    .hot{
        position:absolute;
        width:960px;
        left:50%;
        margin-left:-480px;
        bottom:137px;
        z-index:20;
        color:#fff;
        font-size:14px;
    }
    .hot>a{
        color:#fff;
        cursor:pointer;
    }
    .hot>a:not(:last-child){
        margin-right:20px;
    }
    h2{
        font-size:60px;
        color:#fff;
        text-shadow:0 2px 8px rgba(0,0,0,.2);
        line-height:66px;
        position:absolute;
        top:182px;
        left:50%;
        margin-left:-480px;
    }
    h2,h4{
        font-weight:normal;
    }
    h4{
        cursor:pointer;
        font-size:24px;
        color:#fff;
        text-shadow:0 2px 8px rgba(0,0,0,.2);
        position:absolute;
        top:334px;
        left:50%;
        margin-left:-480px;
    }
    .container{
        position:relative;
        width:100%;
    }
    .container>ul{
        position:relative;
        overflow: hidden;
        height:740px;
    }
    .progress_bar{
        background:rgba(0,0,0,.25);
        transition: opacity .3s;
        transform: translateZ(0);
        z-index: 10;
        width:240px;
        height:3px;
        position:absolute;
        left:50%;
        margin-left:-120px;
        top:667px;
    }
    .progress_bar>span{
        background:#fff;
        height:3px;
        position: absolute;
        transition:.8s;
    }
    li.on{
        opacity:1;
        transition:.8s;
        z-index:5;
    }
    li{
        width:100%;
        position:absolute;
        height:740px;
        opacity:0;
        left:0;
        top:0;
        background-size:auto 100%;

    }
    .prev{
        width:52px;
        cursor:pointer;
        height:52px;
        z-index:20;
        top:50%;
        margin-top:-26px;
        margin-left:-591px;
        left:50%;
        position:absolute;
        background-image:url("http://qn.xqgrwz.cn/prev_normal.png");
        background-repeat: no-repeat;
        background-position: center;
        background-size: 100%;
    }
    .next{
        width:52px;
        cursor:pointer;
        height:52px;
        z-index:20;
        top:50%;
        margin-top:-26px;
        margin-right:-591px;
        right:50%;
        position:absolute;
        background-image:url("http://qn.xqgrwz.cn/next_normal.png");
        background-repeat: no-repeat;
        background-position: center;
        background-size: 100%;
    }
    .prev:hover{
        background-image:url("http://qn.xqgrwz.cn/prev_hover.png");
    }
    .next:hover{
        background-image:url("http://qn.xqgrwz.cn/next_hover.png");
    }
    @media screen and (max-width:960px) {
        ul>li{
            width:960px;
        }
    }
</style>

