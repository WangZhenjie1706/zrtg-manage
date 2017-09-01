var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config');
var pool = mysql.createPool(config.mysql);
router.get('/', function(req, res) {
    pool.getConnection(function (err,connection) {
        var sql1 = 'SELECT * FROM apply order by aid DESC limit 1';
        connection.query(sql1, function (err, result, next) {
            string = JSON.stringify(result);
            title = JSON.parse(string);
            if(next){
                var sql2 = 'SELECT * FROM yushendan where aid = ?';
                connection.query(sql2,[title[0].aid],function (err, result,next) {
                    if(err)
                    {console.log(err)}
                    string1 = JSON.stringify(result);
                    projects = JSON.parse(string1);
                    res.render('input5_1', {title:title,projects:projects});
                })
            }
        });
    })
});
router.post('/post1',function (req,res) {
    var bid = req.body.bid;
    var step = req.body.step;
    var percent = req.body.percent;
    var pdate = req.body.pdate;
    var pamount = req.body.pamount;
    pool.getConnection(function (err,connection) {
        var sql = 'insert into jindu (bid, step, percent, pdate, pamount) values (?, ?, ?, ?, ?)';
        connection.query(sql,[bid, step, percent, pdate, pamount],function (err,result,next) {
            if(err){
                console.log(err)
            }
            else
            {result = {
                code: 200,
                msg: '写入数据成功'}
            }
            res.json(result);
        });
        connection.release();
        })
});
module.exports = router;