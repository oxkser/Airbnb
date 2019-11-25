//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    dayStyle: [{
        month: 'current',
        day: new Date().getDate(),
        color: 'white',
        background: '#AAD4F5'
      },
      {
        month: 'current',
        day: new Date().getDate(),
        color: 'white',
        background: '#AAD4F5'
      }
    ]
  },
  dayClick: function(event) {
    let clickDay = event.detail.day;
    let changeDay = `dayStyle[1].day`;
    let changeBg = `dayStyle[1].background`;
    this.setData({
      [changeDay]: clickDay,
      [changeBg]: "#84e7d0"
    })

  },
  //事件处理函数
  bindViewTap: function() {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },
  onLoad: function() {
    let that = this;
    wx.request({
      url: 'http://localhost:9000/load', //仅为示例，并非真实的接口地址
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
    });
    if (app.globalData.userInfo) {
      this.setData({
        userInfo: app.globalData.userInfo,
        hasUserInfo: true
      })
    } else if (this.data.canIUse) {
      // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
      // 所以此处加入 callback 以防止这种情况
      app.userInfoReadyCallback = res => {
        this.setData({
          userInfo: res.userInfo,
          hasUserInfo: true
        })
      }
    } else {
      // 在没有 open-type=getUserInfo 版本的兼容处理
      wx.getUserInfo({
        success: res => {
          app.globalData.userInfo = res.userInfo
          this.setData({
            userInfo: res.userInfo,
            hasUserInfo: true
          })
        }
      })
    }
  },
  getUserInfo: function(e) {
    console.log(e)
    app.globalData.userInfo = e.detail.userInfo
    this.setData({
      userInfo: e.detail.userInfo,
      hasUserInfo: true
    })
  }
})