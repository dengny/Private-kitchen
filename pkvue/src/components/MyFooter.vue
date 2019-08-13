<template>
    <div class="footer">
        <div class="footer-top">
            <div class="footer-item top1">
                <div class="top1-logo">
                    <span>beitaichufang.com</span>
                </div>
                <div class="top1-media">
                    <div class="media-wechat"></div>
                    <div class="media-weibo"></div>
                    <div class="medai-app"></div>
                </div>
            </div>
            <div class="footer-item top2">

            </div>
            <div class="footer-item top3">
                <ul>
                    <li class="title">关于私家厨房</li>
                    <li>了解私家</li>
                    <li>团队介绍</li>
                    <li>美食专家</li>
                    <li>私家星厨</li>
                    <li>加入我们</li>
                </ul>
            </div>
            <div class="footer-item top4">
                    <ul>
                        <li class="title">产品服务</li>
                        <li>美食生活书刊</li>
                        <li>Web & App</li>
                        <li>品质优选</li>
                    </ul>
            </div>
            <div class="footer-item top5">
                    <ul>
                        <li class="title">联系我们</li>
                        <li>投稿</li>
                        <li>商务合作</li>
                    </ul>
            </div>
        </div>
        <div class="footer-copyright">
            Copyright © 2017 北京贝太文化传媒有限公司 版权所有 [京ICP备16044594号]
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    .footer{
       width: 100%;
       height: 348px;
       background: #070e13;
    }
    .footer-top{
       display: flex;
       align-items: center;
       height: 279px;
       width:960px;
       margin:0 auto;
       border-bottom:1.5px solid #383838;
    }
    .footer-item {
       height: 156px;
       overflow: hidden;
       color: #fff;
    }
    .top1{
       display: flex;
       flex-direction: column;
       justify-content: space-between;
       width: 123px;
    }
    .top1-logo{
        cursor: pointer;
        padding-top: 55px;
        background: url(http://qn.xqgrwz.cn/indexlogo.png) no-repeat top/contain;
        font-size: 14px;
    }
   .top1 .top1-media {
        display: flex;
        justify-content: space-between;
    }
    .media-wechat{
        width: 36px;
        height: 36px;
        cursor: pointer;
        background: url() no-repeat 50%/contain;
    }
    .media-weibo {
        width: 36px;
        height: 36px;
        cursor: pointer;
        display: block;
        background: url() no-repeat 50%/contain;
    }
    .media-app{
        width: 36px;
        height: 36px;
        cursor: pointer;
        background: url() no-repeat 50%/contain;
    }
    .top2 {
        width: 260px;
        margin-left: 36px;
        overflow: visible;
        position: relative;
    }
    .top3{
        width: 112px;
        margin-left: 120px;
    }
    .footer-item ul li.title{
        font-weight: 800;
        margin-bottom: 18px;
        font-size: 17px;
    }
    .footer-item li {
        font-weight: 300;
        margin-bottom: 12px;
        font-size:14px;
        cursor: pointer;
        display: list-item;
        text-align: -webkit-match-parent;
    }
    .top4 {
        width: 90px;
        margin-left: 80px;
    }
    .top5{
        width: 74px;
        margin-left: 80px;
    }
    .footer-copyright {
        margin: 20px 0 30px;
        color: #999;
        font-size: 12px;
        text-align: center;
    }
</style>