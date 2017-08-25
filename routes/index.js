var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config');
var pool = mysql.createPool(config.mysql);
router.get('/', function(req, res, next) {
    res.render('index');
});
router.post('/adduser',function (req,res,next) {
    var lv = req.body.lv;
    var username = req.body.username;
    var userpwd = req.body.userpwd;
    pool.getConnection(function (err,connection) {
        var $sql = 'INSERT INTO user(id, lv, username, userpwd) VALUES(0, ?, ?, ?)';
        connection.query($sql,[lv, username, userpwd],function (err,result) {
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
    });
});
router.post('/delete',function (req,res) {
    var id1 = req.body.id1;
    console.log(id1);
    pool.getConnection(function (err,connection) {
        var sql = 'delete from user where id =?';
        connection.query(sql,[id1],function (err,result) {
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
router.post('/update',function (req,res) {
    var id2 = req.body.id2;
    var lv = req.body.lv;
    var username = req.body.username;
    var userpwd = req.body.userpwd;
    pool.getConnection(function (err,connection) {
        var sql = 'update user set lv=?, username=?, userpwd=? where id =?';
        connection.query(sql,[lv,username,userpwd,id2],function (err,result) {
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
router.post('/addequip',function (req,res,next) {
    var e1 = req.body.e1;
    var e2 = req.body.e2;
    var e3 = req.body.e3;
    var e4 = req.body.e4;
    var e5 = req.body.e5;
    var e6 = req.body.e6;
    var e7 = req.body.e7;
    var e8 = req.body.e8;
    var e9 = req.body.e9;
    pool.getConnection(function (err,connection) {
        var $sql = 'INSERT INTO manage(id, kind, place, type, number, amount, date, person, to_equip, add_equip) VALUES(0,?, ?, ?, ?, ?, ?, ?, ?, ?)';
        connection.query($sql,[e9, e1, e2, e3, e4, e5, e6, e7, e8],function (err,result) {
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
    });
});
module.exports = router;
