<template>
  <div class="main">
    <!-- 食谱类名 -->
      <div class="Title">
        全部食谱
      </div>
      <!-- 食谱根据收藏、浏览量等分类 -->
      <div>
        <ul @click="selection" class="nav">
          <li :class="item==0?'active':''" data-index="0">综合最佳</li>
          <li :class="item==1?'active':''" data-index="1">收藏最多</li>
          <li :class="item==2?'active':''" data-index="2">浏览最多</li>
        </ul>
      </div>
      <!-- 移动红线 -->
      <div>
        <div :style="{marginLeft:`${left}rem`}" class="navLine"></div>
      </div>
      <!-- 分割线 -->
      <div>
        <div class="line"></div>
      </div>
      <!-- 菜单根据不同标准列表显示 -->
      <div>
        <div v-show="item==0" class="menuList">
          <div v-for="(elem,i) of menuList" :key="i" class="menu" >
              <div class="img">
                <img :src="menuList[i].rImg" alt="">
              </div>
              <div class="menuTitle">{{menuList[i].rTitle}}</div>
              <div class="menusubTitle">{{menuList[i].rSubTitle}}</div>
          </div>
        </div>
        <div v-show="item==1">2</div>
        <div v-show="item==2">3</div>
      </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      item:0,
      left:0,
      menuList:[]
    }
  },
  created(){
    this.axios.get(
      "/menu"
    ).then(result=>{
      this.menuList=result.data.data;
    });
  },
  methods:{
    selection(e){
      var li = e.target;
      if(li.nodeName=="LI"){
        var i=li.getAttribute("data-index")
        this.item=i;
        this.left=i*8.1;
      }
    }
  }
}
</script>
<style scoped>
/* 主体样式 */
.main{
  margin:auto;
  padding:0;
  width:960px;
}
/* 菜单分类标题样式 */
.Title{
  font-size: 24px;
  color: #272b2c;
  padding: 60px 0 40px;
  line-height: 40px;
  font-weight: 800;
  width:960px;
}
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
    width: 66px;
    height: 5px;
    border-radius: 5px;
    margin-top: 8px;
    background: #d8316c;
    position: relative;
    left: 0;
    -webkit-transition: all .8s;
    transition: all .8s;

}
/* 分割线样式 */
.line{
  width: 960px;
  height: 2px;
  background: #eee;
  margin-top: 20px;
  border-radius: 3px;
}
/* 菜单样式 */
.menuList>.menu{
  display: inline-block;
  margin-top: 30px;
  width: 227px;
  margin-right: 16px;
  cursor: pointer;
}
/* 清除4的倍数的菜单的右外边距 */
.menuList>.menu:nth-child(4n+0){
  margin-right:0;
}
/* 菜单图片外框样式 */
.menuList>.menu>.img{
  width: 227px;
  overflow:hidden;
  height:151.11px;
}
/* 菜单图片样式 */
.menuList>.menu img{
  width: 100%;
  transition: all .85s;
}
/* 菜单图片鼠标悬浮时样式 */
.menuList>.menu img:hover{
  /* animation: fade .5s; */
  transform:scale(1.2);
}
/* 菜单标题样式 */
.menuTitle{
 text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  line-height: 20px;
  font-size: 17px;
  color: #272b2c;
  font-weight: 300;
  margin-top: 16px;
  width:100%;
  padding:0;
}
/* 菜单详情介绍样式 */
.menusubTitle{
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  line-height: 20px;
  font-size: 14px;
  color: #272b2c;
  font-weight: 300;
  margin-top: 6px;
}
</style>