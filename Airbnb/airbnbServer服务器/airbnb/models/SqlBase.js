class SqlBase {
  constructor() {
    //1，调用MySQL模块
    var mysql = require("mysql");

    //2，创建一个connection
    this.connection=mysql.createConnection({
      host: "localhost", //主机 ip
      user: "root", //MySQL认证用户名
      password: "971216", //MySQL认证用户密码
      port: "3306", //端口号
      database: "airbnb", //数据库里面的数据，
      useConnectionPooling: true
    });
    //3,连接
    this.connection.connect();
  }
}
module.exports = SqlBase;
