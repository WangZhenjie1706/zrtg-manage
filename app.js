var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var multer  = require('multer');
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './uploads')
    },
    filename: function (req, file, cb) {
        //var fileFormat = (file.originalname).split(".");
        cb(null, file.originalname)
    }
});
var upload = multer({ storage: storage });


var index = require('./routes/index');
var users = require('./routes/users');
var login = require('./routes/login');
var input1 = require('./routes/input1');
var input2 = require('./routes/input2');
var input3 = require('./routes/input3');
var input4 = require('./routes/input4');
var input5 = require('./routes/input5');
var input5_1 = require('./routes/input5_1');
var input6 = require('./routes/input6');
var detail = require('./routes/detail');
var detail2 = require('./routes/detail2');
var equip = require('./routes/equip');
var user = require('./routes/user');
var history = require('./routes/history');


var app = express();
app.post('/upload', upload.single('avatar'),function (req,res,next) {
    var path = req.file.originalname;
    console.log(path);
    res.render('input1',{path1:path});
});
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', index);
app.use('/users', users);
app.use('/login', login);
app.use('/input1',input1);
app.use('/input2',input2);
app.use('/input3',input3);
app.use('/input4',input4);
app.use('/input5',input5);
app.use('/input5_1',input5_1);
app.use('/input6',input6);
app.use('/detail',detail);
app.use('/detail2',detail2);
app.use('/equip',equip);
app.use('/user',user);
app.use('/history',history);





// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});
module.exports = upload;

module.exports = app;
