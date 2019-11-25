// pages/navsearch/navsearch.js
let arr = [];
let city = [{
  title: "国内热门城市",
  name: "成都"
}, {
  title: "国际热门城市",
  name: "伦敦"
}, {
  title: "附近"
}
]

Page({

  /**
   * 页面的初始数据
   */
  data: {
    city: city,
    active: 0,
    current: 0
  },
  search: function (event) {
    console.log(event)
    this.setData({
      searchvalue: event.detail.value
    })
  },
  ok: function (event) {
    let that = this;
    wx.request({
      url: 'http://localhost:8888/searcha',
      data: { address: this.data.searchvalue },
      header: {
        "content-type": "application/json"
      },
      method: 'POST',
      dataType: 'json',
      responseType: 'text',
      success: function (res) {
        console.log(res.data)
        that.setData({
          address: res.data
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
      },
    })

  },

  changeCurrent: function (event) {
    let index = event.currentTarget.dataset.index
    this.setData({
      current: index,
      active: index
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
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