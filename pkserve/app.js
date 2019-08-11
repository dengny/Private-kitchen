//导入experss模块
const express = require("express");
//导入session模块
const session = require("express-session");
//导入数据库模块
const mysql = require("mysql");
//导入body-parser模块
const bodyParser = require('body-parser');
//引入轮播图模块
const carouselRouter=require('./routes/carousel');
//导入跨域模块
const cors = require("cors");
//创建服务器
var server = express();
//body-parser配置
server.use(bodyParser.urlencoded({
    extended: false
}));
//跨域配置
server.use(cors({
    //允许跨域访问程序地址列表
    origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
    credentials: true
}));
//session配置
server.use(session({
    secret: "128位字符串", //安全字符串
    resave: true, //请求时要更新新数据
    saveUninitialized: true //保存初始数据
}));
//配置项目静态目录
server.use(express.static("public"));
//启动监听端口
server.listen(3000);
//挂载轮播路由
server.use("/carousel",carouselRouter);