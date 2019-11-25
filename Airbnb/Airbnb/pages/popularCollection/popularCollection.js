// pages/popularCollection/popularCollection.js
Page({
  /**
   * 页面的初始数据
   */
  data: {
    city: []
  },
  return(){
    wx.navigateBack({
      url:"../collect/collect"
    })
  },
  // req(){
  //   console.log("连接服务器");
  //   wx:wx.request({
  //     url: 'http://localhost:8888/popCollection',//开发者服务器接口地址
  //     data: {
  //       id: index//请求的参数
  //     },
  //     header: {
  //       "content-type": "application / json"//设置请求的header,content-type默认为application/json	
  //     },
  //     method: 'POST',               //HTTP请求方法	
  //     dataType: 'json',             //返回的数据格式	
  //     responseType: 'text',         //响应的数据类型
  //     success: function (res) {     //接口调用成功的回调函数
  //       console.log(res.data)
  //     },
  //     fail: function (res) { },     //接口调用失败的回调函数
  //     complete: function (res) { }, //接口调用结束的回调函数（调用成功、失败都会执行）
  //   })
  // },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    let that = this;
    wx: wx.request({
      url: 'http://localhost:8888/popCollection',//开发者服务器接口地址
      data: {
        id: ""//请求的参数
      },
      header: {
        "content-type": "application / json"//设置请求的header,content-type默认为application/json	
      },
      method: 'POST',               //HTTP请求方法	
      dataType: 'json',             //返回的数据格式	
      responseType: 'text',         //响应的数据类型
      success: function (res) {     //接口调用成功的回调函数
        that.setData({
          city: res.data
        })
      },
      fail: function (res) { },     //接口调用失败的回调函数
      complete: function (res) { }, //接口调用结束的回调函数（调用成功、失败都会执行）
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