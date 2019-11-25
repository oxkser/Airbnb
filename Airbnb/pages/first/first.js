// pages/first/first.js
Page({
  houseInfor(e) {
    wx.navigateTo({
      url: '../exploration/exploration',
    })
  },
  /**
   * 页面的初始数据
   */
  data: {
    current:0,
    swiper:[],
    city:[],
    cityhouse:[],
    twocurrent:0,
    hotplace:[],
    hotplacehouse:[]

  },
  click(e) {
    var id = e.currentTarget.dataset.set;
    this.setData({
      current: id-1
    })
    var that = this;
    wx.request({
      url: 'http://localhost:8888/cityhouse',
      data: { id: id},
      header: { "content-type": "application/json" },
      method: 'POST',
      dataType: 'json',
      responseType: 'text',
      success: function (res) {
        console.log(res.data)
        that.setData({
          cityhouse: res.data
        })
      },
      fail: function (res) {
        console.log('fail')
      },
    })

  },
  twoclick(e){
    var idtwo = e.currentTarget.dataset.set;
    console.log(idtwo);
    this.setData({
      twocurrent: idtwo-1
    })
    var that = this;
    wx.request({
      url: 'http://localhost:8888/cityhouse',
      data: { id: idtwo },
      header: { "content-type": "application/json" },
      method: 'POST',
      dataType: 'json',
      responseType: 'text',
      success: function (res) {
        console.log(res.data)
        that.setData({
          hotplacehouse: res.data
        })
      },
      fail: function (res) {
        console.log('fail')
      },
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;
    wx.request({
      url: 'http://localhost:8888/swiper',
      data: '',
      header: { "content-type": "application/json"},
      method: 'POST',
      dataType: 'json',
      responseType: 'text',
      success: function(res) {
        console.log(res.data)
        that.setData({
          swiper:res.data
        })
      },
      fail: function(res) {
        console.log('fail')
      },
    })
    wx.request({
      url: 'http://localhost:8888/city',
      data: {id:2},
      header: { "content-type": "application/json" },
      method: 'POST',
      dataType: 'json',
      responseType: 'text',
      success: function (res) {
        console.log(res.data)
        that.setData({
          city: res.data
        })
      },
      fail: function (res) {
        console.log('fail')
      },
    })
 
    wx.request({
      url: 'http://localhost:8888/hotplace',
      data: '',
      header: { "content-type": "application/json" },
      method: 'POST',
      dataType: 'json',
      responseType: 'text',
      success: function (res) {
        console.log(res.data)
        that.setData({
          hotplace: res.data
        })
      },
      fail: function (res) {
        console.log('fail')
      },
    })

    wx.request({
      url: 'http://localhost:8888/cityhouse',
      data: { id: 1 },
      header: { "content-type": "application/json" },
      method: 'POST',
      dataType: 'json',
      responseType: 'text',
      success: function (res) {
        console.log(res.data)
        that.setData({
          cityhouse: res.data
        })
      },
      fail: function (res) {
        console.log('fail')
      },
    })
    wx.request({
      url: 'http://localhost:8888/cityhouse',
      data: { id: 1 },
      header: { "content-type": "application/json" },
      method: 'POST',
      dataType: 'json',
      responseType: 'text',
      success: function (res) {
        console.log(res.data)
        that.setData({
          hotplacehouse: res.data
        })
      },
      fail: function (res) {
        console.log('fail')
      },
    })

  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})