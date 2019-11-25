let SqlBase = require("./SqlBase");
class JobModel extends SqlBase {
  constructor() {
    super();
  }
  //查询工作
  select(callback) {
    let sql = `select * from aibnb`;
    console.log(sql)
    this.connection.query(sql, function (err, result) {
      if (err) {
        console.log("[insert ERROR] - ", err.message);
        return;
      }
      callback(result);
    });
  }
  priceselect(id,callback) {
    let sql = `select * from pictureurll where pictureid = ${id}`;
    console.log(sql)
    this.connection.query(sql, function (err, result) {
      if (err) {
        console.log("[insert ERROR] - ", err.message);
        return;
      }

      callback(result);
    });
  }
  searchselect(address,callback){
    let sql=`select * from aibnb where address like '${address}'`;
    console.log(sql)
    this.connection.query(sql, function(err, result) {
      if (err) {
        console.log("[insert ERROR] - ", err.message);
        return;
      }

      callback(result);
  });
}

}
module.exports = JobModel;
