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
                    res.render('input6', {title:title,projects:projects});
                })
            }
        });
    })
});
router.post('/post',function (req,res) {
    var i1 = req.body.i1;
    var i2 = req.body.i2;
    var i3 = req.body.i3;
    var i4 = req.body.i4;
    var i5 = req.body.i5;
    var i6 = req.body.i6;
    var i7 = req.body.i7;
    var i8 = req.body.i8;
    var i9 = req.body.i9;
    pool.getConnection(function (err,connection) {
        var sql = 'insert into zichandan (bid, asset_name, asset_type, asset_amount, asset_txm, asset_xlh, sccj, price, remark) values (?, ?, ?, ?, ?, ?, ?, ?, ?)';
        connection.query(sql,[i1, i2, i3, i4, i5, i6, i7, i8, i9],function (err,result,next) {
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
