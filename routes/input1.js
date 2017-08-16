var express = require('express');
var router = express.Router();
router.get('/', function(req, res, next) {
    res.render('input1');
});

module.exports = router;

