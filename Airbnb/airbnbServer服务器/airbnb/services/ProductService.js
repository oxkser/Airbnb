//引入模块
let JobModel = require("../models/JobModel");
class ProductService {
  constructor() {
    this.jobModel = new JobModel();
  }
  select(callback){
    this.jobModel.select(function(data){
      if(data){
        callback(data);
      }
      else{
        console.log("查询失败！");
      }
    })
  }
  priceselect(id,callback){
    this.jobModel.priceselect(id,function(data){
      if(data){
        callback(data);
      }
      else{
        console.log("查询失败！");
      }
    })
  }
  searchselect(address,callback){
    this.jobModel.searchselect(address,function(data){
      if(data){
        callback(data);
      }
      else{
        console.log("查询失败！");
      }
    })
  }

}

module.exports = ProductService;
