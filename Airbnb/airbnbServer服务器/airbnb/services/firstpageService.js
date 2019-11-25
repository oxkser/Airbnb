//引入模块
let FirstpageModel = require("../models/firstpageModel");
class firstpageService {
  constructor() {
    //创建对象
    //创建图片对象model
    this. firstpageModel= new FirstpageModel();
  }
  
  getswiper(callback){
    this.firstpageModel.selectswiper(function(data){
      console.log(data)
      callback(data);
    })
  }

  getcitys(callback){
    this.firstpageModel.selectcitys(function(data){
      console.log(data)
      callback(data);
    })
  }

  getcityhouse(id,callback){
    this.firstpageModel.selectcityhouse(id,function(data){
      console.log(data)
      callback(data);
    })
  }

  gethotplace(callback){
    this.firstpageModel.selecthotplace(function(data){
      console.log(data)
      callback(data);
    })
  }
  // joball(callback){
  //   this.jobModle.selectall(function(data){
  //     console.log(data)
  //     callback(data);
  //   })
  // }

  // jobtag(id,callback){
  //   this.jobModle.selecttag(id,function(data){
  //     console.log(data)
  //     callback(data);
  //   })
  // }

  // addjob(name,money,exp,demand,msg,address,id,tag,callback){
  //   this.jobModle.addjob(name,money,exp,demand,msg,address,id,tag,function(data){
  //     console.log(data)

  //     callback(data);
  //   })
  // }

 
}



module.exports = firstpageService;
