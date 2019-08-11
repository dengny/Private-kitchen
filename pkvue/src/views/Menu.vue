<template>
  <div class="main">
      <div class="Title">
        全部食谱
      </div>
      <div>
        <ul @click="selection" class="nav">
          <li :class="item==0?'active':''" data-index="0">综合最佳</li>
          <li :class="item==1?'active':''" data-index="1">收藏最多</li>
          <li :class="item==2?'active':''" data-index="2">浏览最多</li>
        </ul>
      </div>
      <div>
        <div :style="{marginLeft:`${left}rem`}" class="navLine"></div>
      </div>
      <div>
        <div class="line"></div>
      </div>
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
.main{
  margin:auto;
  padding:0;
  width:960px;
}
.Title{
  font-size: 24px;
  color: #272b2c;
  padding: 60px 0 40px;
  line-height: 40px;
  font-weight: 800;
  width:960px;
}
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
ul.nav li:before {
  content: "";
  position: absolute;
  top: -10px;
  left: -10px;
  right: -10px;
  bottom: -10px;
}
ul.nav li.active{
  color: #d8316c;
}
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
.line{
  width: 960px;
  height: 2px;
  background: #eee;
  margin-top: 20px;
  border-radius: 3px;
}
.menuList>.menu{
  display: inline-block;
  margin-top: 30px;
  width: 227px;
  margin-right: 16px;
  cursor: pointer;
}
.menuList>.menu:nth-child(4n+0){
  margin-right:0;
}
.menuList>.menu>.img{
  width: 227px;
  overflow:hidden;
  height:151.11px;
}
.menuList>.menu img{
  width: 100%;
  transition: all .85s;
}
.menuList>.menu img:hover{
  /* animation: fade .5s; */
  transform:scale(1.2);
}
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