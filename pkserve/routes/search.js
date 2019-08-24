//引入express模块 
const express=require('express');
//引入连接池模块
const pool=require('../pool');
//创建路由
var router=express.Router();
//查询所有跟内容有关的数据
router.get('',(req,res)=>{
    var str=`'%${req.query.str}%'`
    var sql=`SELECT* FROM kitchen_recipe WHERE  rSubTitle LIKE  ${str}`
    console.log(sql);
    pool.query(sql,(err,result)=>{
        if(err)throw err
        if(result.length>0){
            res.send(result)
            return;
        }
        res.send({code:0,mseeage:'没有查询到任何相关数据'})
    })

})
//查询所有的杂志周刊
router.get('/magazine',(req,res)=>{
    var value=req.query.mid
    if(value){
        var sql=`SELECT mId,mImg,mTitle,mIntr FROM kitchen_magazine WHERE mId=?`
        pool.query(sql,[value],(err,result)=>{
            if(err) throw err
            console.log(result)
        })
    }else{
        var sql="SELECT mId,mImg,mTitle,mIntr FROM kitchen_magazine"
        pool.query(sql,(err,result)=>{
            if(err) throw err
            console.log(result)
        })
    }
})
//查看部分杂志周刊
router.get('/magazine/portion',(req,res)=>{
    var sql="SELECT mId,mImg,mTitle,mNumber FROM kitchen_magazine"
    pool.query(sql,(err,result)=>{
        if(err) throw err
        var arr=result
        var arr2=[]
        for(var i=0;i<5;i++){
            var n=parseInt(Math.random()*arr.length)
            arr2.push(arr[n])
            arr.splice(n,1)
        }
        res.send(arr2)
    })
})
//查看部分电子书
router.get('/ebook/portion',(req,res)=>{
    var sql="SELECT eId,eImg,eTitle FROM kitchen_ebook"
    pool.query(sql,(err,result)=>{
        if(err) throw err
        var arr=result
        var arr2=[]
        for(var i=0;i<5;i++){
            var n=parseInt(Math.random()*arr.length)
            arr2.push(arr[n])
            arr.splice(n,1)
        }
        res.send(arr2)
    })
})
//查看部分新闻
router.get('/news/portion',(req,res)=>{
    var sql="SELECT nId,nImg,nTitle,nSubTitle FROM kitchen_news"
    pool.query(sql,(err,result)=>{
        if(err) throw err
        var arr=result
        var arr2=[]
        for(var i=0;i<3;i++){
            var n=parseInt(Math.random()*arr.length)
            arr2.push(arr[n])
            arr.splice(n,1)
        }
        res.send(arr2)
    })
})
//查询一日三餐
router.get('/recipe/day',(req,res)=>{
    var sql='SELECT rId,rTitle,rSubTitle,rClass,rImg FROM kitchen_recipe WHERE rClass!=3 AND rClass!=4'
    pool.query(sql,(err,result)=>{
        if(err)throw err
        res.send(result)
    })
})
//查询视频制作食物
router.get('/recipe/video',(req,res)=>{
    var sql='SELECT rId,rTitle,rSubTitle,rImg,rClass FROM kitchen_recipe WHERE rClass=4'
    pool.query(sql,(err,result)=>{
        if(err)throw err
        res.send(result)
    })
})
//导出模块
module.exports=router;