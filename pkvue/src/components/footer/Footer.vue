<template>
    <footer>
        <!-- 主要内容部分 -->
        <div class="footer_main">
            <!-- 页脚上半部分 -->
            <div class="footer_top">
                <!-- 联系方式 -->
                <div class="item1">
                    <div class="logo">
                        <span>beitaichufang.com</span>
                    </div>
                    <div>

                    </div>
                </div>
                <!-- 图片展示栏 -->
                <div></div>
                <!-- 关于贝太 -->
                <div></div>
                <!-- 产品服务 -->
                <div></div>
                <!-- about me -->
                <div></div>
            </div>
            <!-- 页脚下半部分 -->
            <div class="footer_bottom">Copyright © 2017 北京贝太文化传媒有限公司 版权所有 [京ICP备16044594号]</div>
        </div>
    </footer>
</template>
<script>
export default {
    data(){
        return {

        }
    }
}
</script>
<style scoped>
    footer{
        width:100%;
        background:#070e13;
        height:348px;
    }
    .footer_main{
        width:960px;
        height:348px;
        margin:0 auto;
    }
    .footer_bottom{
        text-align:center;
        color:#999;
        font-size:12px;
    }
    div.item1{
        width:123px;
    }
    div.item1>.logo{
        background:url('http://qn.xqgrwz.cn/indexlogo.png') no-repeat top/contain;
        padding-top:55px;
        font-size:14px;
        color:#fff;
        cursor:pointer;
    }
</style>

