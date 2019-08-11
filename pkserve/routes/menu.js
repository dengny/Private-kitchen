const express=require("express");
//引入连接池
const pool=require("../pool");
//创建路由器
var router=express.Router();
//获取菜单列表(所有菜单数据)
router.get('',(req,res)=>{
    //sql语句
    var sql = 'SELECT rTitle,rSubTitle,rImg,rId FROM kitchen_recipe';
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      if(result.length>0){
        res.send({code:1,msg:'查询成功',data:result});
      }else{
        res.send({code:-1,msg:'查询失败'});
      }
    })
})

//导出菜单模块
module.exports=router;