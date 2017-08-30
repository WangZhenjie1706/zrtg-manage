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
                    res.render('input5', {title:title,projects:projects});
                })
            }
        });
    })
});
router.post('/input5post1',function (req,res) {
    var i51 = req.body.bid;
    var i52 = req.body.hser;
    var i53 = req.body.hname;
    var i54 = req.body.hmoney;
    var i55 = req.body.changjia;
    var i56 = req.body.dept;
    var i57 = req.body.yperson;
    var i58 = req.body.yphone;
    var i59 = req.body.jperson;
    var i510 = req.body.ht_date;
    pool.getConnection(function (err,connection) {
        if(err){
            console.log(err)
        }
        var sql = 'insert into hetong (bid, hser, hname, hmoney, changjia, dept, yperson, yphone, jperson, ht_date) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        connection.query(sql,[i51, i52, i53, i54, i55, i56, i57, i58, i59, i510],function (err,result) {
            if(err)
            {result = {
                code: 300,
                msg: '写入数据失败'};
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
