let PopCollectionService = require('../services/popCollectionServices');
module.exports.popCollection = function (req, res) {
    let popCollectionService = new PopCollectionService();
    //解析前端提交过来的数据
    let name = req.body.name;
    popCollectionService.popCitylist(name,function(result){
        //返回给前端
        console.log(result);
        res.json(result);
    })
}