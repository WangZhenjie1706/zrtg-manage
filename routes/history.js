var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config');
var pool = mysql.createPool(config.mysql);
router.get('/', function(req, res, next) {
    pool.getConnection(function (err,connection) {
        var sql1 = 'SELECT * FROM manage';
        connection.query(sql1, function (err, result) {
            connection.release();
            var string=JSON.stringify(result);
            var result=JSON.parse(string);
            res.render('history', {persons:result});
        });
    })
});
router.post('/giveback',function (req,res) {
    var id = req.body.id;
    pool.getConnection(function (err,connection) {
        var sql = 'update manage set state=? where id =?';
        connection.query(sql,['已归还',id],function (err,result) {
            if(err)
            {result = {
                code: 300,
                msg: '物品借用状态修改成功'};
                console.log(err)
            }
            else
            {result = {
                code: 200,
                msg: '物品借用状态修改失败'}
            }
            res.json(result);
        });
        connection.release();
    })
});
module.exports = router;