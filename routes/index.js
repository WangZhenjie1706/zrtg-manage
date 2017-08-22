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
        });
        connection.release();
    });
});
router.post('/delete',function (req) {
    var id1 = req.body.id1;
    console.log(id1);
    pool.getConnection(function (err,connection) {
        var sql = 'delete from user where id =?';
        connection.query(sql,[id1],function (err,result) {

        });
        connection.release();
    })

});
router.post('/update',function (req) {
    var id2 = req.body.id2;
    var lv = req.body.lv;
    var username = req.body.username;
    var userpwd = req.body.userpwd;
    pool.getConnection(function (err,connection) {
        var sql = 'update user set lv=?, username=?, userpwd=? where id =?';
        connection.query(sql,[lv,username,userpwd,id2],function (err,result) {

        });
        connection.release();
    })

});

module.exports = router;
