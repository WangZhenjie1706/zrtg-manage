var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config');
var pool = mysql.createPool(config.mysql);
router.get('/', function(req, res) {
    pool.getConnection(function (err,connection) {
        var sql = 'SELECT * FROM apply order by aid DESC limit 1';
        connection.query(sql, function (err, result) {
            connection.release();
            var string=JSON.stringify(result);
            var input1=JSON.parse(string);
            res.render('input2', {input1:input1});
        });
    })
});
router.post('/input2post',function (req,res) {
    var did = req.body.did;
    var aid = req.body.aid;
    var dwh_date = req.body.dwh_date;
    console.log(aid);
    pool.getConnection(function (err,connection) {
        var sql = 'insert into dangwei (id, aid, did, dwh_date) values (0, ?, ?, ?)';
        connection.query(sql,[aid, did, dwh_date],function (err,result) {
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
