// pages/exploration/exploration.js
let arr = [];
Page({
  House(e) {
    wx.navigateTo({
      url: '../house/house',
    })
  },
  /**
   * 页面的初始数据
   */
  data: {
    house: [],

  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    let that = this;
    wx.request({
      url: 'http://localhost:8888/search',
      data: '',
      header: {
        "content-type": "application/json"
      },
      method: 'GET',
      dataType: 'json',
      responseType: 'text',
      success: function (res) {
        console.log(res.data)
        that.setData({
          house: res.data
        })
        for (let i = 0; i < res.data.length; i++) {
          let element = res.data[i];
          // console.log(element)
          wx.request({
            url: 'http://localhost:8888/searchp',
            data: { picture: element.picture_id },
            header: {
              "content-type": "application/json"
            },
            method: 'POST',
            dataType: 'json',
            responseType: 'text',
            success: function (res) {
              arr.push(res.data);
              console.log(res.data)
              that.setData({
                picture: arr
              })
            }
          })
        }

      }
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