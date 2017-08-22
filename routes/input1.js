var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config');
var pool = mysql.createPool(config.mysql);
router.get('/', function(req, res, next) {
    res.render('input1');
});
router.post('/input1post',function (req) {
    var project = req.body.project;
    var titlea = req.body.titlea;
    var dept = req.body.dept;
    var budget = req.body.budget;
    var contact = req.body.contact;
    var phone = req.body.phone;
    var sqdate = req.body.sqdate;
    var pid = req.body.pid;
    var pwdate = req.body.pwdate;
    pool.getConnection(function (err,connection) {
        var $sql = 'INSERT INTO apply(aid, project, titlea, dept, budget, contact, phone, sqdate, pid, pwdate) VALUES(0, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
        connection.query($sql,[project, titlea, dept, budget, contact, phone, sqdate, pid, pwdate],function (err,result) {
        });
        connection.release();
    })
});
module.exports = router;

