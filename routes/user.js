var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config');
var pool = mysql.createPool(config.mysql);
router.get('/', function(req, res) {
    pool.getConnection(function (err,connection) {
        var sql1 = 'SELECT * FROM user';
        connection.query(sql1, function (err, result) {
            connection.release();
            var string=JSON.stringify(result);
            var result1=JSON.parse(string);
            res.render('user', {persons:result1});
            console.log(result);
            console.log(string);
            console.log(result1);
        });
    })
});
module.exports = router;
