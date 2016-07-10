<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="renderer" content="webkit">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="format-detection" content="telephone=no">
  <title>分享-并读新闻</title>
  <link rel="apple-touch-icon-precomposed" sizes="57x57" href="${path}/image/app/iphone_icon_57x57.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${path}/image/app/iphone_icon_114x114.png">
  <link rel="stylesheet" href="${path}/css/app/main.css?v=1.0">
</head>

<body>
<div class="content">
  <div class="swiper-container containner" id="J_containner">
    <div id="page-menu" class="page-menu clearfix">
      <div class="bg-line l"></div>
      <div class="page-menu-box l">
        <p class="b menu-box-p"><b class="cc"></b>开启阅薪</p>
        <span></span>
        <p class="menu-box-p"><b class="cc"></b>看并 ，就是快</p>
        <span></span>
        <p class="menu-box-p"><b class="cc"></b>有并 ，何弃聊</p>
        <span></span>
        <p class="menu-box-p"><b class="cc"></b>装并，拿阅薪</p>
        <span></span>
        <p class="menu-box-p"><b class="cc"></b>分成不独享</p>
      </div>
    </div>
    <div class="swiper-wrapper pages" id="J_animate">
      <section class="swiper-slide page page1">
        <div class="page-list" id="J_page1">
          <span class="big-bg"></span>
          <span class="date">加入并读<b>${day}</b>天</span>
          <span class="user"><img src="<c:if test='${userPic != null}'>${userPic}</c:if><c:if test='${userPic == null}'>${path}/image/app/default_photo.png</c:if>"></span>
          <span class="lg-tips">注册时请输入<br/>邀请码【<b class="clr-e04b35">${inviteCode}</b>】哦!
          <span class="lg-tips-bottom"></span>
          </span>
          <span class="read">已阅读<b>${readCount}</b>篇文章</span>
          <span class="income">已获得阅读分成<b>${money}</b>元</span>
                      <span class="bt-box">
                          <span class="together">与<b>${userName}</b>一起开启阅薪之旅</span>
                          <span class="begin"><a href="javascript:void(0);" class="dl-btn join"; id="J_btn-first">立即下载</a></span>
                          <span class="see-more"  id="J_begin">查看更多</span>
                      </span>
          <span class="arr"><img src="${path}/image/app/down_arrow.png"></span>
        </div>
      </section>
      <section class="swiper-slide page page2">
        <div class="page-list" id="J_page2">
          <span class="big-bg"></span>
          <span class="txt"><img src="${path}/image/app/img1/a1_txt.png"></span>
          <span class="rocket">
            <img src="${path}/image/app/img1/rocket.png" >
            <span class="absolute hair">
            </span>
          </span>
          <span class="paper"></span>
          <span class="arr"><img src="${path}/image/app/down_arrow.png"></span>
        </div>
      </section>
      <section class="swiper-slide page page3">
        <div class="page-list" id="J_page3">
          <span class="big-bg"></span>
          <span class="txt"><img src="${path}/image/app/img2/a3_txt.png"></span>
          <span id="J_boy" class="boy"></span>
          <span class="arr"><img src="${path}/image/app/down_arrow.png"></span>
        </div>
      </section>
      <section class="swiper-slide page page4">
        <div class="page-list" id="J_page4">
          <span class="big-bg"><img src="${path}/image/app/img3/a4.png"></span>
          <span class="txt"><img src="${path}/image/app/img3/a4_txt.png"></span>
          <span class="coin"></span>
                      <span class="eyes">
                          <i class="absolute eye1"><img src="${path}/image/app/img3/eye1.png"></i>
                          <i class="absolute eye2"><img src="${path}/image/app/img3/eye2.png"></i>
                      </span>
          <span class="mouth"><img src="${path}/image/app/img3/mouth.png"></span>
          <span class="slaver"><img src="${path}/image/app/img3/slaver.png"></span>
          <span class="arr"><img src="${path}/image/app/down_arrow.png"></span>
        </div>
      </section>
      <section class="swiper-slide page page5">
        <div class="page-list" id="J_page5">
          <div class="relative download-cont">
            <p class="absolute">
              <span class="code">注册时请输入邀请码【<b>${inviteCode}</b>】</span>
              <span class="download-btn"><a href="javascript:void(0);" class="dl-btn join" id="J_btn">立即下载</a></span>
            </p>
          </div>
          <div class="intro">
            <dl>
              <dt><span>关于并读</span></dt>
              <dd><span>国内首创阅读新闻分成模式！</span></dd>
              <dd><span>无任务，不限制，看新闻就有钱！</span></dd>
              <dd><span>金额透明，每日结算，现金提成！</span></dd>
              <dd><span>精选商品，直接兑换，方便快捷！</span></dd>
            </dl>
          </div>
        </div>
      </section>
    </div>
  </div>
</div>

<script type="text/javascript" src="${path}/js/app/idangerous.swiper.min.js"></script>
<script src="${path}/js/share_common.js"></script>
<script>
  window.onload = function(){
    shareCommon(); //分享公用方法
    setWinHeight('#J_containner');
    setWinHeight('.page');
//    animate();
    (function(){
      var mySwiper = new Swiper('#J_containner',{
        mode : 'vertical',
        speed : 300,
        loop: false,
        mousewheelControl:true,
        keyboardControl:true,
        onSlideChangeEnd:function(obj){
          currentShow(obj.activeIndex);
          mySwiper.enableMousewheelControl();
          mySwiper.enableKeyboardControl();
        }
      });
      document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
      var btn = document.getElementById('J_begin'),
           pages = document.getElementById('J_animate'),
           page = pages.getElementsByTagName('section'),
           body  = document.getElementsByTagName('body')[0],
           box = document.querySelectorAll('.menu-box-p');
           winH = body.offsetHeight;
      btn.addEventListener('click',function(e){
        mySwiper.swipeNext();
        e.preventDefault();
      },false);

      for(var i=0;i<box.length;i++){
        box[i].onclick = function(i){
          return function(){
            mySwiper.swipeTo(i,500,true);
          }
        }(i);
      }
    })();
  };
  //展示当前页
  function currentShow(idx){
    var idx = idx,
        obj = document.querySelectorAll('.page')[idx],
        list = document.querySelectorAll('.page-list'),
        box = document.querySelectorAll('.menu-box-p');

  //classList兼容IE浏览器代码
  if (!("classList" in document.documentElement)) {
      Object.defineProperty(HTMLElement.prototype, 'classList', {
        get: function() {
          var self = this;
          function update(fn) {
            return function(value) {
              var classes = self.className.split(/\s+/g),
                      index = classes.indexOf(value);

              fn(classes, index, value);
              self.className = classes.join(" ");
            }
          }

          return {
            add: update(function(classes, index, value) {
              if (!~index) classes.push(value);
            }),

            remove: update(function(classes, index) {
              if (~index) classes.splice(index, 1);
            }),

            toggle: update(function(classes, index, value) {
              if (~index)
                classes.splice(index, 1);
              else
                classes.push(value);
            }),

            contains: function(value) {
              return !!~self.className.split(/\s+/g).indexOf(value);
            },

            item: function(i) {
              return self.className.split(/\s+/g)[i] || null;
            }
          };
        }
      });
    }

    for (var i = 0; i < list.length; i++) {
      list[i].style.display = 'none';
      box[i].classList.remove('b');
    }
    list[idx].style.display = 'block';
    box[idx].classList.add('b');
  }
  //设置容器高度为可视区域高度
  function setWinHeight(obj){
    var win  = document.getElementsByTagName('body')[0],
        winh = win.offsetHeight,
        ele  = document.querySelectorAll(obj)[0];
    ele.style.height = winh +'px';
  }
  //动画
  function animate(){
    var  boy = document.getElementById("J_boy");
    var  img =boy.getElementsByTagName('img');
    var  timer=null;
    var	 num = 0;
    timer=setInterval(function(){
      num++;
      for (var i = 0; i < img.length; i++) {
        img[i].style.display = 'none';
      }
      if(num==2){
        num=0;
      }
      img[num].style.display = 'block';
    },300);
  }

</script>
</body>
</html>
