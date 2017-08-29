var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config');
var pool = mysql.createPool(config.mysql);
router.get('/', function(req, res) {
    pool.getConnection(function (err,connection) {
        var sql1 = 'SELECT * FROM apply order by aid DESC limit 1';
        var sql2 = 'SELECT * FROM yushendan';
        connection.query(sql1, function (err, result, next) {
            string = JSON.stringify(result);
            title = JSON.parse(string);
            if(next){
                connection.query(sql2,function (err, result,next) {
                    string1 = JSON.stringify(result);
                    projects = JSON.parse(string1);
                    res.render('input3', {title:title,projects:projects});
                })

            }

        });
    })
});
router.post('/input3post1',function (req,res) {
    pool.getConnection(function (err,connection) {
        var aid = req.body.aid;
        var money = req.body.money;
        var ysd_date = req.body.ysd_date;
        var banme = req.body.bname;
        var bmoney = req.body.bmoney;
        var sql = 'insert into yushendan (bid, aid, money, ysd_date, bname, bmoney) values (0, ?, ?, ?, ?, ?)';
        connection.query(sql,[aid, money, ysd_date, banme, bmoney],function (err,result) {
            if(err)
            {result = {
                code: 300,
                msg: '信息提交失败'};
                console.log(err)
            }
            else
            {result = {
                code: 200,
                msg: '信息提交成功'}
            }
            res.json(result);
        });
        connection.release();
    })
});
module.exports = router;
