//引入模块
let PopCollectionModel = require("../models/popCollectionModel");
class popColletionService {
  constructor() {
    this.popCollectionModel = new PopCollectionModel();
  }
  popCitylist(name,callback) {
    this.popCollectionModel.selectPopCollection(name,function(data){
          console.log(data)
          callback(data);
      });
  }
}

module.exports = popColletionService;
