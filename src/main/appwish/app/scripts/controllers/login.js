'use strict';

angular.module('AppWishApp')
  .controller('LoginCtrl', function ($scope, dialog) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.close = function(result){
    	dialog.close(result);
    	//console.log(result);
  	};
  });
