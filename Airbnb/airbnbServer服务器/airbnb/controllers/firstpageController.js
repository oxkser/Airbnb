let firstpageService = require('../services/firstpageService')
module.exports.swiper = function(req, res) {
    let jobname = req.body.jobname;
    let id= req.body.id;
    
    let FirstpageService=new firstpageService();

    FirstpageService.getswiper(function(data){
        console.log(data)
        res.json(data);
    })
};

module.exports.city = function(req, res) {
    let jobname = req.body.jobname;
    let id= req.body.id;
    console.log(id)
    
    let FirstpageService=new firstpageService();

    FirstpageService.getcitys(function(data){
        console.log(data)
        res.json(data);
    })
};

module.exports.cityhouse = function(req, res) {
    let id= req.body.id;
    console.log(id)
    let FirstpageService=new firstpageService();

    FirstpageService.getcityhouse(id,function(data){
        console.log(data)
        res.json(data);
    })
};

module.exports.hotplace = function(req, res) {
    
    let FirstpageService=new firstpageService();

    FirstpageService.gethotplace(function(data){
        console.log(data)
        res.json(data);
    })
};


  