<template>
    <div>
        <!-- 杂志页面详情 -->
        <div class="magazine-detail">
            <!-- 该杂志 -->
            <div class="magazine-content">
                <div class="content-title">
                    <!-- 该页标题 -->
                    <a href="javascript:;" class="title-back">贝太书刊·贝太厨房杂志</a>
                    <div class="title-name">·《洋蓟食鲜》</div>
                </div>
                <!-- 该杂志内容 -->
                <div class="content">
                    <!-- 杂志大图片 -->
                    <div class="maga-img">
                        <img :src="currentImg" alt="" class="img">
                    </div>
                    <!-- 杂志其他图片列表 -->
                    <div class="maga-imgList">
                        <div @mouseenter="updataImg" class="list-img list-img-active">
                            <img src="http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180404/DWWCCFhiQR.jpg" alt="" class="img">
                        </div>
                        <div @mouseenter="updataImg" class="list-img">
                            <img src="http://btcf.oss-cn-hangzhou.aliyuncs.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190124/cQzErPEPGr.jpg" alt="" class="img">
                        </div>
                    </div>
                    <!-- 杂志信息 -->
                    <div class="maga-info">
                        <!-- 杂志标题 -->
                        <div class="maga-title">《洋蓟食鲜》</div>
                        <!-- 杂志期刊日期 -->
                        <div class="maga-date">日期：2018年03月刊</div>
                        <!-- 杂志刊数 -->
                        <div class="maga-nper">刊数：NO.187</div>
                        <!-- 杂志定价 -->
                        <div class="maga-price">定价：¥12.00</div>
                        <!-- 杂志简介 -->
                        <div class="maga-intro">
                            <div class="intro-title">简介:</div> 
                            <div class="intro-content">你知道你吃的蔬菜可能是一朵要开的花吗？不仅是洋蓟，还有西兰花、白花菜、刺山柑……他们都是一些会开花的蓓蕾或花头，却穿上了蔬菜的外衣，变成了餐桌上的食物。
                            </div>
                        </div>
                        <!-- 杂志app下载 -->
                        <div class="maga-btn">
                            <div data-v-e72b945a="" class="btn-download">
                                下载app免费试读
                            </div> 
                            <!-- 杂志订阅 -->
                            <a href="https://detail.youzan.com/show/goods/newest?alias=2of91w6j2gqip" target="_blank" class="btn-youzan">订阅杂志</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 其他杂志 -->
            <div class="maga-detail-slide">
                <div class="slide-title">
                    其他《私家厨房》杂志
                </div>
                <div class="swiper-container swiper">
                    <div class="swiper-wrapper" :style="{marginLeft:marginLeft+'px'}" style="transfrom:translate3d(0px,0px,0px);transition-duration: 0ms;">
                        <div class="item swiper-slide" style="width:179.2px;margin-right:16px">
                            <div class="item-img">
                                <img src="https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190801/rR53ejmajH.jpg?x-oss-process=image/crop,x_12,y_15,w_987,h_1234" alt="" class="img">
                            </div>
                            <div class="item-title">
                                夏日冰冰凉
                            </div>
                            <div class="item-indro">
                                NO.204
                            </div>
                        </div>
                        <div class="item swiper-slide" style="width:179.2px;margin-right:16px">
                            <div class="item-img">
                                <img src="https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190801/rR53ejmajH.jpg?x-oss-process=image/crop,x_12,y_15,w_987,h_1234" alt="" class="img">
                            </div>
                            <div class="item-title">
                                夏日冰冰凉
                            </div>
                            <div class="item-indro">
                                NO.204
                            </div>
                        </div>
                        <div class="item swiper-slide" style="width:179.2px;margin-right:16px">
                            <div class="item-img">
                                <img src="http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190329/FM2RRZawP7.jpg?x-oss-process=image/crop,x_61,y_52,w_2149,h_2686" alt="" class="img">
                            </div>
                            <div class="item-title">
                                夏日冰冰凉
                            </div>
                            <div class="item-indro">
                                NO.204
                            </div>
                        </div>
                        <div class="item swiper-slide " style="width:179.2px;margin-right:16px">
                            <div class="item-img">
                                <img src="https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190801/rR53ejmajH.jpg?x-oss-process=image/crop,x_12,y_15,w_987,h_1234" alt="" class="img">
                            </div>
                            <div class="item-title">
                                夏日冰冰凉
                            </div>
                            <div class="item-indro">
                                NO.204
                            </div>
                        </div>
                        <div class="item swiper-slide " style="width:179.2px;margin-right:16px">
                            <div class="item-img">
                                <img src="https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190801/rR53ejmajH.jpg?x-oss-process=image/crop,x_12,y_15,w_987,h_1234" alt="" class="img">
                            </div>
                            <div class="item-title">
                                夏日冰冰凉
                            </div>
                            <div class="item-indro">
                                NO.204
                            </div>
                        </div>
                        <div class="item swiper-slide    " style="width:179.2px;margin-right:16px">
                            <div class="item-img">
                                <img src="https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190801/rR53ejmajH.jpg?x-oss-process=image/crop,x_12,y_15,w_987,h_1234" alt="" class="img">
                            </div>
                            <div class="item-title">
                                夏日冰冰凉
                            </div>
                            <div class="item-indro">
                                NO.204
                            </div>
                        </div>
                        <div class="item swiper-slide    " style="width:179.2px;margin-right:16px">
                            <div class="item-img">
                                <img src="http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190329/FM2RRZawP7.jpg?x-oss-process=image/crop,x_61,y_52,w_2149,h_2686" alt="" class="img">
                            </div>
                            <div class="item-title">
                                夏日冰冰凉
                            </div>
                            <div class="item-indro">
                                NO.204
                            </div>
                        </div>
                        <div class="item swiper-slide    " style="width:179.2px;margin-right:16px">
                            <div class="item-img">
                                <img src="https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190801/rR53ejmajH.jpg?x-oss-process=image/crop,x_12,y_15,w_987,h_1234" alt="" class="img">
                            </div>
                            <div class="item-title">
                                夏日冰冰凉
                            </div>
                            <div class="item-indro">
                                NO.204
                            </div>
                        </div>
                    </div>
                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                </div>
                <div @click="move(-1)" id="btn-left" class="swiper-prev swiper-button-disabled">
                    <i class="icon ion-ios-arrow-back"></i>
                </div>
                <div @click="move(1)" id="btn-right" class="swiper-next">
                    <i class="icon ion-ios-arrow-forward"></i>
                </div>
            </div>
        </div>
        <myfooter></myfooter>
    </div>
</template>
<script>
import MyFooter from "../components/MyFooter"
export default {
    data(){
        return{
            marginLeft:0,
            j:0,
            currentImg:"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180404/DWWCCFhiQR.jpg",
            list:[1,2,3,4,5,6,7,8]
        }
    },
    mounted(){
        // 当页面加载完后判断右按钮是否禁用
        // 如果禁用就加上禁用class名
        if(this.list.length<=5){
            document.getElementById("btn-right").classList.add("swiper-button-disabled");
        }
    },
    methods:{
        //移动
        moveTo(){
            this.marginLeft=-this.j*195.2;
        },
        move(i){
            // 创建左右按钮对象
            var btnLeft=document.getElementById("btn-left");
            var btnRight=document.getElementById("btn-right");
            //判断右按钮是否禁用
            if(this.list.length<=5||this.j>=this.list.length-5){
                btnRight.classList.add("swiper-button-disabled");
            }else{
                btnRight.classList.remove("swiper-button-disabled");
            }
            //判断是否能够右移
            if(i==-1&&!btnLeft.classList.contains("swiper-button-disabled")){
                this.j--;
                // 右移动
                this.moveTo();
                //判断左按钮是否禁用
                if(this.j==0){
                    btnLeft.classList.add("swiper-button-disabled"); 
                }
            }
            // 判断右按钮是否能够左移
            if(i==1&&!btnRight.classList.contains("swiper-button-disabled")){
                this.j++;
                // 能左移就解除左按钮的禁用状态
                btnLeft.classList.remove("swiper-button-disabled");
                this.moveTo();
            }
        },
        //更换图片函数
        updataImg(e){
            var div = e.target;
            if(div.nodeName=="DIV"){
               var siblings = div.parentNode.children;
               for(var i=0;i<siblings.length;i++){
                   if(siblings[i]==div){
                       div.classList.add("list-img-active");
                       this.currentImg=div.children[0].src;
                   }else{
                       siblings[i].classList.remove("list-img-active");
                   }
               }
            }
        }
    },
    components:{
        "myfooter":MyFooter,
    }
}
</script>
<style scoped>
.magazine-detail {
    margin-top: 122px;
    width: 100%;
}
.magazine-detail .magazine-content{
    width: 960px;
    margin: 0 auto;
}
.magazine-detail .magazine-content .content-title {
    display: flex;
    font-size: 17px;
    color: #272b2c;
    letter-spacing: 1px;
}
.magazine-detail .magazine-content .content {
    margin-top: 60px;
    width: 100%;
    padding-bottom: 150px;
    display: flex;
}
.content-title .title-back{
    color: #d8316c;
    font-weight: 800;
}
.content .maga-img {
    width: 388px;
    height: 388px;
    -webkit-box-flex: 0;
    -ms-flex: 0 388px;
    flex: 0 388px;
    border: 1px solid #eee;
    position: relative;
}
.maga-imgList .list-img {
    cursor: pointer;
    margin-bottom: 12px;
    width: 88px;
    height: 88px;
    border: 1px solid #eee;
    position: relative;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.item-img .img:hover{
  /* animation: fade .5s; */
  transform:scale(1.2);
}
.maga-imgList .list-img-active {
    border: 2px solid #d8316c;
}
.maga-img .img,
.list-img .img {
    max-width: 100%;
    max-height: 100%;
    transition: all .85s;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
}
.item .item-img .img{
    max-width: 100%;
    max-height: 100%;
    transition: all .85s;
}
.content .maga-imgList {
    margin-left: 16px;
    width: 88px;
}
.content .maga-info{
    margin-left: 40px;
    width: 426px;
    position: relative;
}
.maga-info .maga-title {
    font-size: 24px;
    color: #272b2c;
    font-weight: 800;
}
.maga-info .maga-date {
    font-size: 17px;
    color: #272b2c;
    margin-top: 20px;
    line-height: 26px;
    font-weight: 500;
}
.maga-infor .maga-nper, .maga-info .maga-price{
    font-size: 17px;
    color: #272b2c;
    line-height: 26px;
    font-weight: 500;
}
.maga-info .intro-title {
    margin-top: 24px;
}
.maga-info .intro-content,.maga-info .intro-title{
    display: -webkit-box;
    -webkit-line-clamp: 6;
    -webkit-box-orient: vertical;
    overflow: hidden;
    font-size: 17px;
    color: #272b2c;
    line-height: 26px;
    max-height: 132px;
    font-weight: 500;
}
.maga-info .maga-btn {
    position: absolute;
    top: 345px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
}
.maga-info .maga-btn .btn-download {
    cursor: pointer;
    width: 160px;
    height: 45px;
    line-height: 45px;
    font-size: 14px;
    color: #fff;
    text-align: center;
    background: #d8316c;
    border-radius: 3px;
    letter-spacing: 1px;
}
.maga-info .maga-btn .btn-youzan:visited {
    color: #d8316c;
    text-decoration: none;
}
.maga-info .maga-btn .btn-youzan {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    width: 160px;
    height: 45px;
    line-height: 45px;
    font-size: 14px;
    color: #fff;
    text-align: center;
    border: 1px solid #d8316c;
    border-radius: 3px;
    letter-spacing: 1px;
    margin-left: 30px;
}
.maga-detail-slide {
    width: 960px;
    margin: 0 auto;
    position: relative;
}
.maga-detail-slide .swiper {
    width: 100%;
    margin-top: 20px;
    margin-bottom: 120px;
}
.slide-title{
    font-size: 24px;
    color: #272b2c;
    letter-spacing: .4px;
    font-weight: 800;
}
.swiper-container {
    margin: 0 auto;
    position: relative;
    overflow: hidden;
    list-style: none;
    padding: 0;
    z-index: 1;
}
.swiper-wrapper {
    position: relative;
    width: 100%;
    height: 100%;
    z-index: 1;
    display: -ms-flexbox;
    display: flex;
    transition-property: transform;
    box-sizing: content-box;
}
.swiper .item {
    width: 179px;
    margin-right: 16px;
    cursor: pointer;
}
.swiper-slide {
    -ms-flex-negative: 0;
    flex-shrink: 0;
    width: 100%;
    height: 100%;
    position: relative;
    transition-property: transform;
}
.item .item-img {
    /* padding-top: 125.14%; */
    width:179.19px;
    height:224.02px;
    position: relative;
    overflow: hidden;
}
.item .item-title {
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    font-size: 17px;
    color: #272b2c;
    font-weight: 600;
    margin-top: 16px;
}
.item .item-intro {
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    font-size: 14px;
    color: #272b2c;
    font-weight: 300;
    margin-top: 6px;
}
.swiper-container .swiper-notification {
    position: absolute;
    left: 0;
    top: 0;
    pointer-events: none;
    opacity: 0;
    z-index: -1000;
}
.swiper-button-disabled {
    color:#ddd
}
.swiper-prev:before {
    content: "";
    position: absolute;
    top: -10px;
    left: -10px;
    right: -10px;
    bottom: -10px;
}
.swiper-prev {
    cursor: pointer;
    position: relative;
    width: 24px;
    height: 24px;
    position: absolute;
    z-index: 9;
    top: 50%;
    left: -38px;
    outline: none;
}
.swiper-next {
    cursor: pointer;
    position: relative;
    width: 24px;
    height: 24px;
    position: absolute;
    z-index: 9;
    top: 50%;
    right: -38px;
    outline: none;
}
.swiper-next:before {
    content: "";
    position: absolute;
    top: -10px;
    left: -10px;
    right: -10px;
    bottom: -10px;
}
.ion-ios-arrow-forward,
.ion-ios-arrow-back{
    font-size:48px;
    position:absolute;
    top:-12px;
}
</style>