const mysql = require('mysql');
var pool = mysql.createPool({
    host: '127.0.0.1', //连接的服务器IP地址或域名
    port: '3306', //端口号
    user: 'root', //数据库账户
    password: '', //数据库密码
    database: 'kitchen', //连接数据库名称
    connectionLimit: 15 //连接池大小
});

module.exports = pool; //导出该连接池模块方面其他模块使用