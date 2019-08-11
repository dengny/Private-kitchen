<template>
    <div class="search">
        <!-- 搜索框使用 flex布局 弹性布局 -->
        <input type="text" placeholder="搜索食谱/食材">
        <!-- 搜索按钮 -->
        <a href="javascript:;">搜索</a>
    </div>
</template>
<script>
export default {
    data(){
        return {

        }
    },
}
</script>
<style scoped>
    .search{
        display:flex;
        position:absolute;
        z-index:9;
        bottom:177px;
        left:50%;
        width:960px;
        margin-left:-480px;
        border:1px solid #eee;
        box-shadow:0 6px 12px 0 rgba(0,0,0,.08);
        height:60px;
        border-radius:6px;
        background:#fff url("http://qn.xqgrwz.cn/search.png") no-repeat 20px/19px
    }
    .search>input{
        margin-left:60px;
        flex:1;
        padding:19px 0;
        height:22px;
        overflow: hidden;
        outline:none;
        border:0;
        font-size:14px;
    }
    .search>a{
        display:block;
        margin:10px 20px;
        border-radius:4px;
        background-color:#d8316c;
        color:#fff;
        font-size:17px;
        flex:0 74px;
        line-height:40px;
        text-align:center;
        cursor:pointer;
    }
</style>
