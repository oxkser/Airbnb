let SqlBase = require("./SqlBase");
class firstpageModel extends SqlBase {
  constructor() {
    super();
  }

  selectswiper(callback){
    let sql = `select * from firstpageSwiper`;
    this.connection.query(sql, function(err, result) {
      if (err) {
        console.log("[selectswiper ERROR] - ", err.message);
        return;
      }
      callback(result);
    });
    //6,连接结束
    this.connection.end();
  }
  
  selectcitys(callback){
    let sql = `select * from citys`;
    this.connection.query(sql, function(err, result) {
      if (err) {
        console.log("[selectcitys ERROR] - ", err.message);
        return;
      }
      callback(result);
    });
    //6,连接结束
    this.connection.end();
  }

  selectcityhouse(id,callback){
    let sql = `select * from cityhouse where cityid=${id}`;
    this.connection.query(sql, function(err, result) {
      if (err) {
        console.log("[selectcityhouse ERROR] - ", err.message);
        return;
      }
      callback(result);
    });
    //6,连接结束
    this.connection.end();
  }

  selecthotplace(callback){
    let sql = `select * from hotplace`;
    this.connection.query(sql, function(err, result) {
      if (err) {
        console.log("[selecthotplace ERROR] - ", err.message);
        return;
      }
      callback(result);
    });
    //6,连接结束
    this.connection.end();
  }


 
}



module.exports = firstpageModel;
