<template>
  <div class="container">
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
            <!-- 数据 -->
            <div v-for="(elem,i) of list" :key="i" class="menu" >
                <div class="img">
                  <img :src="elem.rImg" alt="">
                </div>
                <div class="menuTitle">{{elem.rTitle}}</div>
                <div class="menusubTitle">{{elem.rSubTitle}}</div>
            </div>
            <!-- 分页 -->
            <div class="list_page">
              <ul>
                <li :class="page>0?'active':''"><button @click="list_prev">上一页</button></li>
                <li v-for="(elem,i) of page_list" :class="i==page?'active':''" :key="i" @click="list_change(i)">
                  {{elem}}
                </li>
                <li :class="page==length-1?'':'active'"><button @click="list_next">下一页</button></li>
              </ul>
            </div>
          </div>
          <div v-show="item==1">2</div>
          <div v-show="item==2">3</div>
        </div>
    </div>
    <!-- 遮罩层 -->
    <div class="keep" :class="keep?'':'hide'">
      <h2>页面加载中，请稍等</h2>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      item:0,
      left:0,
      menuList:[],
      length:0,
      page:0,
      list:[],
      keep:true
    }
  },
  created(){
    this.get_value()
  },
  methods:{
    //上一页
    list_prev(){
      this.load_wait()
      if(this.page>0){
        this.page--
        this.get_value()
      }
    },
    // 下一页
    list_next(){
      this.load_wait()
      if(this.page!=(this.length-1) && this.page>=0){
        this.page++
        this.get_value()
      }
    },
    //切换页码
    list_change(i){
      this.load_wait()
      this.page=i
      this.get_value()
    },
    // 获取所有值
    get_value(){
      this.axios.get(
      "/menu"
     ).then(result=>{
      this.menuList=result.data.data;
      this.length=Math.ceil(result.data.page);
      this.get_list();
      });
    },
    selection(e){
      var li = e.target;
      if(li.nodeName=="LI"){
        var i=li.getAttribute("data-index")
        this.item=i;
        this.left=i*8.1;
      }
    },
    get_list(){
      this.load_wait()
      var i=this.page*20;
      var arr=[]
      for(var a=i;a<i+20;a++){
        if(this.menuList[a]){
          arr.push(this.menuList[a])
        } 
      }
      this.list=arr
      },
      load_wait(){
      this.keep=true;
      var time=setTimeout(()=>{
        this.keep=false;
        clearTimeout(time)
      },800)
      }
    },
  computed:{
    page_list(){
      var n=1
      var arr=[]
      for(var i=0;i<this.length;i++){
        arr[i]=n
        n++
      }
      return arr
    }
  }
}
</script>
<style scoped>
.hide{
  display:none;
}
.keep{
  position:fixed;
  top:0;
  left:0;
  width:100%;
  height:100vh;
  background-color:rgba(0,0,0,.5);
  z-index:999999;
}
.keep>h2{
  position:relative;
  top:50%;
  transform:translate(0,50%);
  text-align:center;
  color:#dedede;
}
.list_page>ul>li:first-child.active>button,.list_page>ul>li:last-child.active>button{
  color:#fff;
  cursor:pointer;
}
button{
  border:0;
  outline:none;
  background:transparent;
  cursor: pointer;
  color:#e8e8e8;
  cursor:not-allowed;
}
.list_page{
  margin:20px auto 80px;
  display:flex;
  justify-content: center;
}
.list_page>ul{
  display:flex;
  color:#303133;
}
.list_page>ul>li{
    text-align:center;
    cursor:pointer;
    width:28px;
    height:28px;
    line-height:28px;
    color:#d8316c;
}
.list_page>ul>li.active{
  color:#fff;
  background-color:#d8316c;
  border-radius:8px;
}
.list_page>ul>li:first-child,.list_page>ul>li:last-child{
  width:48px;
  height:28px;
  line-height:28px;
  color:#e8e8e8;
  font-size:16px;
  border-radius:8px;
  border: 1.5px solid #e8e8e8;
  cursor:not-allowed;
}
.list_page>ul>li:first-child.active,.list_page>ul>li:last-child.active{
  border: 1.5px solid #d8316c;
  background: #d8316c;
    color:#fff;
 
}
.list_page>ul>li:not(:last-child){
    margin-right: 20px;
}
.container{
  margin:80px  auto 0;
  position: relative;
}
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