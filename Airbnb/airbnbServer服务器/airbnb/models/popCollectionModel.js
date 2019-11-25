let SqlBase = require("./SqlBase");
class popCollectionModel extends SqlBase {
  constructor() {
    super();
  }

  selectPopCollection(name,callback) {
    let sql = `select * from popcollection`;
    this.connection.query(sql, function (err, result) {
      if (err) {
        console.log("[companyselect1 ERROR] - ", err.message);
        return;
      }
      callback(result);
    });
  }

}

module.exports = popCollectionModel;
