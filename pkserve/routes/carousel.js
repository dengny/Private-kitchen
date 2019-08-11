const express=require("express");
console.log('11111')
//引入连接池
const pool=require("../pool")
var router=express.Router();

//发送get请求获取轮播图数据
router.get('',(req,res)=>{
    var sql="SELECT cTitle,cName,cImg,cSubTitle FROM kitchen_carousel"
    pool.query(sql,(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})
//导出轮播图模块
module.exports=router;