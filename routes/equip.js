var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config');
var pool = mysql.createPool(config.mysql);
router.get('/', function(req, res) {
    pool.getConnection(function (err,connection) {
        var sql1 = 'SELECT * FROM zichandan';
        connection.query(sql1, function (err, result, next) {
            string = JSON.stringify(result);
            equips = JSON.parse(string);
            res.render('equip', {equips:equips});
        });
    })
});
module.exports = router;
