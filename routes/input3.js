var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var config = require('../config');
var pool = mysql.createPool(config.mysql);
router.get('/', function(req, res, next) {
    res.render('input3');
});
router.post('/input3post1',function (req,res) {
    var table = req.body.tab;
    console.log(table);
    pool.getConnection(function (err,connection) {
        var sql = 'insert into yushen (id, aid, bid, bname, bamount) values (0, 0, 0, ?, ?)';
        connection.query(sql,[table],function (err,result) {
            if(err)
            {result = {
                code: 300,
                msg: '党委会相关信息提交成功'};
                console.log(err)
            }
            else
            {result = {
                code: 200,
                msg: '党委会信息提交失败，请重新输入'}
            }
            res.json(result);
        });
        connection.release();
    })
});
module.exports = router;
