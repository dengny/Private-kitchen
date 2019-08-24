//引入express模块
const express=require('express');
//引入连接池
const pool=require('../pool');
//创建路由
var router=express.Router();

//获取验证码信息
router.get('/img',(req,res)=>{
    sql="SELECT rId,isCake,cakeImg FROM kitchen_reg"
    pool.query(sql,(err,result)=>{
        if(err) throw err
        var arr=result
        var arr2=[]
        for(var i=0;i<6;i++){
            var n=parseInt(Math.random()*arr.length)
            arr2.push(arr[n])
            arr.splice(n,1)
        }
        res.send(arr2)
    })
})

//导出模块
module.exports=router;