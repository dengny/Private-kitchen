<template>
    <div>
         <!-- 食谱根据收藏、浏览量等分类 -->
        <div>
          <ul @click="selection" class="nav">
            <li v-for="(elem,i) of classNav" :key="i" :class="value==i?'active':''" :data-index="i" >{{classNav[i]}}</li>
            <!-- <li :class="item==0?'active':''" data-index="0">综合最佳</li>
            <li :class="item==1?'active':''" data-index="1">收藏最多</li>
            <li :class="item==2?'active':''" data-index="2">浏览最多</li> -->
          </ul>
        </div>
        <!-- 移动红线 -->
        <div>
          <div :style="{marginLeft:`${left}rem`,width:`${lineWidth}rem`}" class="navLine"></div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            value:0,
            left:0,
        }
    },
    methods:{
        selection(e){
            var li = e.target;
            if(li.nodeName=="LI"){
            var i=li.getAttribute("data-index")
            this.value=i;
            this.left=i*this.moveDistance;
            this.childClick();
            }
        },
        // value是在父组件on监听的方法
        // 第二个参数this.value是需要传的值
        childClick(){
            this.$emit("value",this.value)
        }
    },
    props:[
        "classNav",
        "lineWidth",
        "moveDistance"
    ]
}
</script>
<style scoped>
    /* 导航样式 */
ul.nav li{
  position:relative;
  margin-right:4rem;
  cursor: pointer;
  position: relative;
  display: inline-block;
  font-size: 17px;
  color: #272b2c;
  letter-spacing: -.4px;
  font-weight: 500;
  -webkit-transition: all .8s;
  transition: all .8s;
}
/* 增加导航间距 */
ul.nav li:before {
  content: "";
  position: absolute;
  top: -10px;
  left: -10px;
  right: -10px;
  bottom: -10px;
}
/* 导航栏点击时增加属性 */
ul.nav li.active{
  color: #d8316c;
}
/* 导航栏下的红线样式 */
.navLine {
    height: 5px;
    border-radius: 5px;
    margin-top: 8px;
    background: #d8316c;
    position: relative;
    left: 0;
    -webkit-transition: all .8s;
    transition: all .8s;

}
</style>