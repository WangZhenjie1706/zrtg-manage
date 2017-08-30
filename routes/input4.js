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
                    res.render('input4', {title:title,projects:projects});
                })
            }
        });
    })
});
router.post('/input4post',function (req,res) {
    var bid = req.body.bid;
    var gid = req.body.gid;
    var company = req.body.company;
    var gwh_date = req.body.gwh_date;
    pool.getConnection(function (err,connection) {
        var sql = 'insert into guanwei (bid, gid, company, gwh_date) values (?, ?, ?, ?)';
        connection.query(sql,[bid, gid, company, gwh_date],function (err,result) {
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
