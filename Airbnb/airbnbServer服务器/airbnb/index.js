//引入框获
let express = require("express");
let loadControl=require('../airbnb/controllers/loadControl');
//获得对象
var app = express();
//处理文件的模块
let fs = require("fs");
//设置跨域访问
app.all("*", function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "X-Requested-With");
  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
  next();
});
//引入body-parser模块
let bodyParser = require("body-parser");
//创建 application/x-www-form-urlencoded 编码解析
let urlencodedParser = bodyParser.urlencoded({
  extended: false
});
app.use(bodyParser.json())
//引入文件上传的模块
let multer = require("multer");
//设置静态文件
app.use(express.static("public"));
//定义服务器的ip地址
let ip = "http://localhost";
//定义端口号
let port = 8888;



//引入job模块
let popCollectionController = require("./controllers/popCollectionControllers");
let firstpageController = require('./controllers/firstpageController');
let JobController = require("./controllers/JobController");

app.get('/load',loadControl.select);
app.post("/swiper", urlencodedParser, firstpageController.swiper);
app.post("/city", urlencodedParser, firstpageController.city);
app.post("/cityhouse", urlencodedParser, firstpageController.cityhouse);
app.post("/hotplace", urlencodedParser, firstpageController.hotplace);
app.post("/popCollection", urlencodedParser, popCollectionController.popCollection);
app.get("/search", urlencodedParser,JobController.index);
app.post("/searchp", urlencodedParser,JobController.priceselect);
app.post("/searcha", urlencodedParser,JobController.searchselect);
// app.post("/popCollection", urlencodedParser, function(req,res){
 

// });
// app.post("/cityhouse", urlencodedParser, function(req,res){
//   console.log(req.body)
//   res.send()
// });






//获得产品列表

// app.post('/jobinfor',urlencodedParser,jobconrtoller.jobinforbyid);

// app.post('/companyshow',urlencodedParser,companycontroler.search);

// app.post('/companyinfor',urlencodedParser,companycontroler.searchbyid);

// app.post('/joball',urlencodedParser,jobconrtoller.joball);

// app.post('/jobtag',urlencodedParser,jobconrtoller.tagshow);

// app.post('/addcompany',urlencodedParser,companycontroler.addcompany);

// app.post('/addjob',urlencodedParser,jobconrtoller.addjob);

// let userController=require('./controllers/UserController')
// app.post("/usercheck", urlencodedParser,userController.check);

// app.post("/useradd", urlencodedParser, userController.add);

// app.post("/selectname",urlencodedParser,companycontroler.searchname);


app.listen(port,function(){
  console.log('启动')
});
