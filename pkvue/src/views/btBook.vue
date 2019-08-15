<template>
    <div>
        <div class="coverPhoto">
            <div id="baner-title">
                贝太书刊
            </div>
            <div id="baner-intro">
                中国第一本专门针对家庭的厨艺生活月刊，最优秀、有效的家庭解决之道，全国月销72万
            </div>
        </div>
        <div class="magazine">
            <div class="magazine-nav">
                <div class="mgz-nav-item" @click="change(1)">贝太厨房杂志</div>
                <div class="mgz-nav-item" @click="change(2)">贝太电子书</div> 
            </div>
            <div class="nav-line">
                <span class="line-red"></span>
            </div>
            <mt-tab-container v-model="active">
            <mt-tab-container-item id="tab1">
                <div class="mgz-content-item">
                    <div class="item-img">
                        <img src="https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190801/rR53ejmajH.jpg?x-oss-process=image/crop,x_12,y_15,w_987,h_1234" alt="">
                    </div>
                    <div class="item-title">
                        夏日冰凉凉
                    </div>
                    <div class="item-num">
                        NO.204
                    </div>
                </div>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
                <div class="ebook-item">
                    <div class="item-content">
                        <div class="ebook-item-img">
                            <img src="https://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/EB5053/YNhSHyQhA6.jpg" alt="">
                        </div>
                        <div class="ebook-item-text">
                            <div class="ebook-item-title">无麸质饮食指南</div>
                            <div class="ebook-item-writer">大长腿HUAer</div>
                            <div>
                                <div class="ebook-item-jj">简介</div>
                                <div class="ebook-item-intro">
                                    人人都崇尚健康饮食的今天，一个词突然风靡全球：“无麸质”。什么是麸质？麸质是存在于小麦、大麦和黑麦中的一类可以被正常人吸收的蛋白质。而无麸质饮食，则指完全不含麸质的食品，主要是针对乳糜泻、对小麦敏感和小麦过敏的人群。在21世纪初，无麸质饮食法还在欧美地区掀起了一股饮食潮流，成为众多名人瘦身的秘方。本次贝太厨房就请到了无麸质饮食的专家：花儿，为大家带来35道完全不含麸质的食谱，涵盖早中晚三餐以及平时吃的零食甜品，种类丰富，花样繁多。不多说了，赶紧跟着花儿来学习制作无麸质美食吧！
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </mt-tab-container-item>
        </mt-tab-container>
        </div>
    </div>
</template>lo
<script>
export default {
    data(){
        return {
            active:"tab1"
        }
    },
    methods: {
        change(n){
            var mgzItem=document.getElementsByClassName("mgz-nav-item");
            var mgzItems=document.getElementsByClassName("mgz-content-item");
            var mgz=document.getElementById("magazine-content");
            var ebook=document.getElementById("ebook-content");
            var line=document.getElementsByClassName("line-red")[0];
            if(n==2){
                line.style="margin-left:202px;width:130px;";
                mgzItem[1].style="color:#d8316c";
                mgzItem[0].style="color:#000";
                this.active="tab2"
            }else if(n==1){
                line.style="width:155px;";
                mgzItem[0].style="color:#d8316c";
                mgzItem[1].style="color:#000";
                this.active="tab1"
            }
        }
    },
    created() {
        var mgzItem=document.getElementsByClassName("mgz-nav-item");
        var mgzItems=document.getElementsByClassName("mgz-content-item");
        var mgz=document.getElementById("magazine-content");
        var ebook=document.getElementById("ebook-content");
        //console.log(mgzItems)
        
        for (var i=0;i<mgzItems.length;i++){
            var u=i+1;
            if(u%5==0){
                mgzItems[i].style="margin-right:0px;"
            }
        }
    },
}
</script>
<style scoped>
    .coverPhoto{
        background: url(http://app-file.beitaichufang.com/img/H5/web/image/book.png) no-repeat 50%/cover;
        width:100%;
        height:500px;
        position: relative;
    }
    #baner-title{
        width:180px;
        height:45px;
        font-size: 45px;
        color:#ffffff;
        position: absolute;
        top:186px;
        left:50%;
        margin-left:-90px;
    }
    #baner-intro{
        width:588px;
        height:66px;
        font-size: 21px;
        color:#ffffff;
        position: absolute;
        left:50%;
        top:259px;
        margin-left:-294px;
        text-align: center;
    }
    .magazine{
        width:980px;
        margin:0px auto;
        padding-top:80px;
    }
    .magazine-nav{
        width:100%;
        display: flex;
    }
    .magazine-nav>div:first-child{
        color:#d8316c;
    }
    .mgz-nav-item{
        width:161.61px;
        height:44px;
        margin-right:40px;
        font-size: 26px;
        font-weight: bold;
        transition: all .5s linear;
    }
    .nav-line{
        width:100%;
    }
    .line-red{
        display: block;
        width:153px;
        border-top:5px #d8316c solid ;
        border-radius:2px;
        transition: all .5s linear;
    }
    .item-img>img{
        width:179px;height:223.78px;
    }
    .mgz-content-item{
        display: inline-block;
        margin-top: 30px;
        width: 179px;
        margin-right: 16px;
        cursor: pointer;
    }
    .item-title{
        font-size:17px;
        font-weight: bold;
        margin-top:16px;
    }
    .item-num{
        font-size: 14px;
        margin-top:6px;
    }
    .ebook-item{
        width:472px;
        height:327px;
        padding:30px 28px 30px 24px;
        box-sizing: border-box;
    }
    .item-content{
        width:420px;
        height:267px;
        display: flex;
    }
    .ebook-item-img>img{
        width:200px;
        height:266.66px;
    }
    .ebook-item-text{
        margin-left:16px;
        width:202px;
        height:267px;
    }
    .ebook-item-intro{
        width:202px;
        height:132px;
        overflow: hidden;
        font-size:14px;
    }
    .ebook-item-jj{
        font-size: 14px;
        height: 22px;
    }
    .ebook-item-title{
        font-size: 20px;
        font-weight: bold;
        height:56px;
    }
    .ebook-item-writer{
        font-size: 14px;
        height:57px;
    } 
</style>