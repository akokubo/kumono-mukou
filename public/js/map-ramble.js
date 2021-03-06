/*global google, jQuery, console */
/*jslint browser:true */

var MAPRAMBLE = {};

// マップの初期中心位置
MAPRAMBLE.initial = {
  zoom: 9,
  latitude: 41.037931,
  longitude: 140.569153
};

// マップを初期化
MAPRAMBLE.initialize = function () {
  'use strict';
  // 表示領域の計算
  var viewportHeight = window.innerHeight ? window.innerHeight : jQuery(window).height();
  var mapHeight = viewportHeight - 20;
  jQuery('#map').css('height', mapHeight);

  // Google Mapsの初期化
  MAPRAMBLE.createMap();
};

// マップを生成
MAPRAMBLE.createMap = function () {
  'use strict';
  var centerLatLng, options;

  // 最初に中心に初石駅を表示させる
  centerLatLng = new google.maps.LatLng(MAPRAMBLE.initial.latitude, MAPRAMBLE.initial.longitude);

  options = {
    zoom: this.initial.zoom, // 拡大率
    center: centerLatLng, // 表示の最初の中心
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  // Google Mapsをid="map"に生成
  this.map = new google.maps.Map(jQuery("#map")[0], options);
};

MAPRAMBLE.getPlaces = function () {
  'use strict';
  jQuery.ajax({
    type: "GET",
    url: '/places.json',
    dataType: 'json'
  }).done(function (places) {
    places.map(function (place) {
      MAPRAMBLE.addMarker(place);
    });
  }).fail(function (jqXHR, textStatus) {
    console.log("fail");
    console.log(textStatus);
  });
};

MAPRAMBLE.addMarker = function (place) {
  'use strict';
  var marker, options;

  if (place.hasOwnProperty('latitude') && place.hasOwnProperty('longitude') && place.latitude !== null && place.longitude !== null) {
    options = {
        position: new google.maps.LatLng(place.latitude, place.longitude),
        map: MAPRAMBLE.map,
        icon: "http://maps.google.com/mapfiles/marker.png"
    };

    // マーカーの生成
    marker = new google.maps.Marker(options);

    // マーカーにイベントハンドラを設定
    google.maps.event.addListener(marker, 'click', function () {
      //console.log('click');
      var infoWindow = new google.maps.InfoWindow();
      var content = '<p>' + place.description + '</p>';
      content += '<p><img src="' + place.photo_url + '" alt="' + place.description + '" width="320"></p>';
      infoWindow.setContent(content);
      infoWindow.open(MAPRAMBLE.map, marker);
    });
  }
};

// メインプログラム
jQuery(document).ready(function () {
  'use strict';
  MAPRAMBLE.initialize();
  MAPRAMBLE.getPlaces();
});
