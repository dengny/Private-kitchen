<template>
  <div>
    <!-- 分页组件 -->
    <div class="el-pagination">
      <!-- 上一页按钮 -->
      <button class="btn-prev" id="btn-prev" disabled>
       <i class="icon ion-ios-arrow-left"></i>
      </button>
      <!-- 页码 -->
      <ul class="el-pager" @click="chosePage" @mouseover="hoverMore" @mouseout="leave">
        <li class="number" v-for="(elem,i) of list" :key="i" v-if="list.length<8||((list.length>7&&i<6)||(list.length>7&&i>list.length-3))" :class="i==0?' active':list.length>7&&i==list.length-2?'icon ion-android-more-horizontal':''">{{list.length>7&&i==list.length-2?"":i+1}}</li>
         <!-- <li class="icon ion-android-more-horizontal">
        <li class="number">2</li>
        <li class="icon ion-ios-arrow-left">
          <span class="icon ion-ios-arrow-left">
          </span>
        </li>
        <li class="number">3</li>
        <li class="number">4</li>
        <li class="number">5</li>
        <li class="number">6</li>
        <li class="icon ion-android-more-horizontal">
        </li>
        <li class="number">247</li> -->
      </ul>
      <!-- 下一页按钮 -->
      <button class="btn-next" id="btn-next" :disabled="page==0?true:false">
       <i class="icon ion-ios-arrow-right"></i>
      </button>
    </div>
  </div>
</template>
<script>
export default {
    data(){
      return{
        page:4,
        list:[1,2,3,4,5,6,7,8,9,10,11] 
      }
    },
    methods:{
      //选择页码事件
      chosePage(e){
        var li = e.target;
        if(li.className=="number"){
          li.classList.add("active");
          var lis = li.parentNode.children;
          for(var i=0;i<lis.length;i++){
            if(lis[i]!=li){
              lis[i].classList.remove("active");
            }else{
              var btnPrev = document.getElementById("btn-prev");
              var btnNext = document.getElementById("btn-next");
              if(i==0){
                btnPrev.disabled=true;
              }else{
                btnPrev.disabled=false;
              }

              if(i==lis.length-1){
                btnNext.disabled=true;
                btnNext.style.color=""
              }else{
                btnNext.disabled=false;
              }
              if(i<=3 && i!=1){
                lis[1].className="number";
                lis[1].innerHTML="2";
              }else if(lis.length>7&&i>3){
                lis[1].className="icon ion-android-more-horizontal";
                lis[1].innerHTML="";
              }
            }
          }
        }
      },
      //当有更多页未显示时,鼠标悬浮在更多上时(...表示更多)发生的事件
      hoverMore(e){
        var li = e.target;
        if(li.classList.contains("ion-android-more-horizontal")){
          var lis = li.parentNode.children;
          if(li==lis[lis.length-2]){
            li.className="icon ion-ios-arrow-right";
            var span = document.createElement("span");
            span.className="icon ion-ios-arrow-right";
            li.appendChild(span);
          }
          if(li==lis[1]){
            li.className="icon ion-ios-arrow-left";
            var span = document.createElement("span");
            span.className="icon ion-ios-arrow-left";
            li.appendChild(span);
          }
        }
      },
      //当有更多页未显示时,鼠标离开更多(...表示更多)时发生事件
      leave(e){
        var li = e.target;
        if(li.classList.contains("icon")){
          if(li.nodeName=="span"){
            console.log("span");
          }
          li.innerHTML="";
          li.className="icon ion-android-more-horizontal";
        }
      }
    }
}
</script>
<style scoped>
/* 分页样式 */
  .el-pagination{
    margin: 20px 0 80px;
    display: flex;
    justify-content: center;
    white-space: nowrap;
    padding: 2px 5px;
    color: #303133;
    font-weight: 700;
  }
  /* 上一页按钮样式 */
  .el-pagination .btn-prev{
    min-width: 28px;
    width: 28px;
    height: 28px;
    padding: 0!important;
    border: 1.5px solid #d8316c;
    background: #d8316c;
    border-radius: 50%;
    margin-right: 20px;
  }
  /* 防止上边距溢出 */
  .el-pagination:before {
    display: table;
    content: "";
  }
  /* 页码ul样式 */
  .el-pager{
    user-select: none;
    list-style: none;
    font-size: 0;
  }
  /* 具体页码样式 */
  .el-pager .number{
    font-weight: 600;
    border-radius: 24px;
    min-width: 28px;
    height: 28px;
    margin: 0 6px;
    color: #d8316c;
    padding: 0 6px;
  }
  /* 激活页码增加样式 */
  .el-pagination .el-pager .active {
    color: #fff;
    background: #d8316c;
  }
  /* 下一页样式 */
  .el-pagination .btn-next {
    min-width: 28px;
    width: 28px;
    height: 28px;
    padding: 0!important;
    border: 1.5px solid #d8316c;
    background: #d8316c;
    border-radius: 50%;
    margin-left: 20px;
  }
  /* 页码li样式 */
  .el-pager li {
    vertical-align: top;
    margin: 0;
    display: inline-block;
    background: #fff;
    padding: 0 4px;
    font-size: 13px;
    min-width: 35.5px;
    height: 28px;
    line-height: 28px;
    box-sizing: border-box;
    text-align: center;
  }
  ul .ion-ios-arrow-left{
    color:red;
  }
  ul .ion-ios-arrow-right{
    color:red;
  }
  .btn-next .ion-ios-arrow-right{
    color:#fff;
  }
  .btn-next:disabled .ion-ios-arrow-right{
    color:#303133;
  }
  .btn-prev .ion-ios-arrow-left{
    color:#fff;
  }
  .btn-prev:disabled .ion-ios-arrow-left{
    color:#303133;
  }
  .ion-android-more-horizontal{
    color:red;
  }
  /* 上一页、下一页按钮禁用样式 */
  .el-pagination button:disabled {

    background-color: #fff;
    cursor: not-allowed;
    background: #fff;
    border: 1.5px solid #e8e8e8;
  }
</style>