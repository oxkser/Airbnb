let mysql=require("../models/sqlModel");
class loadModel extends mysql{
    constructor(){
        super();
    };
    select_infor(house_id,callback){
        let sql=`select * from house_infor where house_id=${house_id}`;
        this.connection.query(sql, function(err, result) {
            if (err) {
              console.log("[select house_infor ERROR] - ", err.message);
              return;
            }
            callback(result);
          });
         
    }

    select_supply(house_id,callback){
        let sql=`select * from supply where house_id=${house_id}`;
        this.connection.query(sql, function(err, result) {
            if (err) {
              console.log("[select supply ERROR] - ", err.message);
              return;
            }
            callback(result);
          });
    }

    select_image(img_id,callback){
        let sql=`select * from image_table where image_id=${img_id}`;
        this.connection.query(sql, function(err, result) {
            if (err) {
              console.log("[select  image_id ERROR] - ", err.message);
              return;
            }
            callback(result);
          });
    }
    select_estimate(estimate_id,callback){
      let sql=`select * from estimate where estimate_id=${estimate_id}`;
      this.connection.query(sql, function(err, result) {
          if (err) {
            console.log("[select estimate ERROR] - ", err.message);
            return;
          }
          callback(result);
        });
  }
  select_estimateInfor(views_id,callback){
    let sql=`select * from comment where views_id=${views_id}`;
    this.connection.query(sql, function(err, result) {
        if (err) {
          console.log("[select comment ERROR] - ", err.message);
          return;
        }
        callback(result);
      });
  }
  select_address(address_id,callback){
    let sql=`select * from address_tab where address_id=${address_id}`;
    this.connection.query(sql, function(err, result) {
      if (err) {
        console.log("[select address ERROR] - ", err.message);
        return;
      }
      callback(result);
    });
  }
  select_asked(asked_id,callback){
    let sql=`select * from asked_tab where asked_id=${asked_id}`;
    this.connection.query(sql, function(err, result) {
      if (err) {
        console.log("[select asked ERROR] - ", err.message);
        return;
      }
      callback(result);
    });
  }
}
module.exports=loadModel;