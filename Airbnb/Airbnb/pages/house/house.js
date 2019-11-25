// pages/house/house.js
Page({
  houseInfor(e) {
    wx.navigateTo({
      url: '../exploration/exploration',
    })
  },
  /**
   * 页面的初始数据
   */
  data: {},
  Tarvel(e) {
    let sTop = this.data.scrollTop;
    console.log(sTop);
    this.setData({
      display: 'block',
      hidden: 'hidden'
    });
    let displayData = this.data.data6.travel_infor;
    this.setData({
      datas: displayData
    })
  },
  Cancel(e) {
    let sTop = this.data.scrollTop;
    console.log(sTop);
    this.setData({
      display: 'block',
      hidden: 'hidden'
    });
    let displayData = this.data.data7.cancel;
    this.setData({
      datas: displayData
    })
  },
  Tip(e) {
    let sTop = this.data.scrollTop;
    console.log(sTop);
    this.setData({
      display: 'block',
      hidden: 'hidden'
    });
    let displayData = this.data.data7.tip;
    this.setData({
      datas: displayData
    })
  },
  Address(e) {
    let sTop = this.data.scrollTop;
    console.log(sTop);
    this.setData({
      display: 'block',
      hidden: 'hidden'
    });
    let displayData = this.data.data6.address_infor;
    this.setData({
      datas: displayData
    })
  },
  click(e) {
    console.log(e);
    if (e.touches[0].pageY < 420) {
      this.setData({
        display: 'none',
        hidden: ''
      });
    }
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    let that = this;
    wx.request({
      url: 'http://localhost:8888/load', //仅为示例，并非真实的接口地址
      method: 'GET',
      dataType: 'json',
      data: {
        house_id: 1
      },
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        console.log(res);
        let result1 = res.data.data1[0];
        let result2 = res.data.data2;
        let result3 = res.data.data3[0];
        let result4 = res.data.data4[0];
        let result5 = res.data.data5[0];
        let result6 = res.data.data6[0];
        let result7 = res.data.data7[0];
        that.setData({
          address: result1.address,
          house_name: result1.house_name,
          views: result1.views,
          house_infor: result1.house_infor,
          bedroom: result1.bedroom,
          money: result1.money,
          data1: result1,
          data2: result2,
          data3: result3,
          data4: result4,
          data5: result5,
          data6: result6,
          data7: result7
        }, function() {
          if (result1.bed == 1) {
            that.setData({
              bed: "大床房"
            });
          }
        });
      },
      fail(err) {
        console.log(err);
      }
    })
  },
  onPageScroll: function(e) { // 获取滚动条当前位置
    console.log(e)
    console.log(e.scrollTop) //获取滚动条当前位置的值
    this.setData({
      scrollTop: e.scrollTop
    })
  },

})