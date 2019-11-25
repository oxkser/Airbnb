let LoadService=require("../services/LoadService");
module.exports.select=function(req,res){
    let loadService=new LoadService();
    let house_id=req.query.house_id;
    loadService.selected(house_id,function(ob){
        console.log("传回的数据为"+ob);
        res.json(ob);
    });
}
       
   