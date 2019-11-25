let ProductService = require("../services/ProductService");

module.exports.index = function(req, res) {
  //解析前端提交过来的数据
  
  let productService = new ProductService();
  productService.select(function(data) {
    //把业务逻辑层返回的数据返还给前端
    // console.log(data)
    res.json(data);
  });
};

module.exports.priceselect=function(req,res){
  let id = req.body.picture;
  console.log(id);
  let productService = new ProductService();
  productService.priceselect(id,function(data){
    // console.log(data)
    res.json(data);
  })
}
module.exports.searchselect=function(req,res){
  let address = req.body.address;
  console.log(req.body);
  let productService = new ProductService();
  productService.searchselect(address,function(data){
    // console.log(data)
    res.json(data);
  })
}