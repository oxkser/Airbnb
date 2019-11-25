let loadModel=require('../models/loadModel');
class LoadService{
    constructor(){};
    selected(house_id,callback){
        let LoadModel=new loadModel();
        LoadModel.select_infor(house_id,function(data1){
            if(data1.length!=0){
                if(data1[0].image_id){
                    let img_id=data1[0].image_id;
                    let estimate_id=data1[0].estimate_id;
                    let address_id=data1[0].address_id;
                    let asked_id=data1[0].asked_id;
                    LoadModel.select_image(img_id,function(data2){
                        if(data2.length!=0){
                            console.log("图片数据为"+data2);
                            LoadModel.select_supply(house_id,function(data3){
                                console.log("供应数据为"+data3);
                                LoadModel.select_estimate(estimate_id,function(data4){
                                    let views_id=data4[0].views_id;
                                    if(data4.length!=0){
                                        console.log("评价数据为"+data4);
                                        LoadModel.select_estimateInfor(views_id,function(data5){
                                            if(data5.length!=0){
                                            console.log("评价为"+data5);
                                            LoadModel.select_address(address_id,function(data6){
                                                if(data6.length!=0){
                                                    console.log("地址信息为"+data6)
                                                    LoadModel.select_asked(asked_id,function(data7){
                                                       if(data7.length!=0){
                                                        console.log("要求信息为"+data7);
                                                        callback({data1,data2,data3,data4,data5,data6,data7});
                                                       }
                                                    })
                                                }
                                            })
                                        
                                        }

                                        })
                                       
                                    }
                                    else{
                                        console.log("查询数据4有误！");
                                    }
                                })
                            });
                        }
                        else{
                            console.log("查询数据2有误！");
                        }
                    })
                }
            }
            else{
                console.log("查询数据1有误！");
            }
        })
        }
    }
module.exports=LoadService;