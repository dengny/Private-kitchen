<template>
  <div>
    <div class="el-pagination">
      <button class="btn-prev" disabled>
        <i class="el-icon el-icon-arrow-left">
            
        </i>
      </button>
      <ul class="el-pager">
        <li class="number active">1</li>
        <li class="number">2</li>
        <li class="number">3</li>
        <li class="number">4</li>
        <li class="number">5</li>
        <li class="number">6</li>
        <li class="el-icon more btn-quickprev el-icon-more"></li>
        <li class="number">247</li>
      </ul>
      <button class="btn-next">
        <i class="el-icon el-icon-arrow-right">
            
        </i>
      </button>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
  .el-pagination{
    margin: 20px 0 80px;
    display: flex;
    justify-content: center;
    white-space: nowrap;
    padding: 2px 5px;
    color: #303133;
    font-weight: 700;
  }
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
  .el-pagination:before {
    display: table;
    content: "";
  }
  [class*=" el-icon-"], [class^=el-icon-] {
    font-family: element-icons!important;
    speak: none;
    font-style: normal;
    font-weight: 400;
    font-variant: normal;
    text-transform: none;
    line-height: 1;
    vertical-align: baseline;
    display: inline-block;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }
  .el-icon-arrow-left:before {
    content: "\E600";
  }
  .el-pager{
    user-select: none;
    list-style: none;
    font-size: 0;
  }
  .el-pager .number{
    font-weight: 600;
    border-radius: 24px;
    min-width: 28px;
    height: 28px;
    margin: 0 6px;
    color: #d8316c;
    padding: 0 6px;
  }
  .el-pagination .el-pager .active {
    color: #fff;
    background: #d8316c;
  }
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
  .el-icon-arrow-right:before {
    content: "\E604";
  }
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
  .el-pagination button:disabled {
    color: #c0c4cc;
    background-color: #fff;
    cursor: not-allowed;
    background: #fff;
    border: 1.5px solid #e8e8e8;
  }
</style>