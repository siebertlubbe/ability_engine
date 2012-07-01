// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require ./namespace
//= require_tree .

ns('REA.helpers', function (nsHelpers) {

  nsHelpers.applicationHelper = {

    getInternetExplorerVersion: function () {
      var rv = -1; // Return value assumes failure.
      if (nsHelpers.applicationHelper.appName() === 'Microsoft Internet Explorer') {
        var ua = nsHelpers.applicationHelper.userAgent();
        var re = new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})");
        if (re.exec(ua) !== null) {
          rv = parseFloat(RegExp.$1);
        }
      }
      return rv;
    },

    userAgent: function () {
      return navigator.userAgent;
    },

    appName: function () {
      return navigator.appName;
    },

    isIE7: function () {
      var ieVersion = nsHelpers.applicationHelper.getInternetExplorerVersion();
      return ieVersion >= 7.0 && ieVersion < 8.0;
    },

    isIE: function () {
      return nsHelpers.applicationHelper.getInternetExplorerVersion() > 0;
    }

  };
});