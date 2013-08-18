'use strict';

angular.module('AppWishApp')
  .controller('MainCtrl', function ($scope, idea, $dialog) {

  	$scope.freshIdeas = idea.query();
  	$scope.topIdeas = idea.query();

  	$scope.idea = new idea();
    $scope.submitIdea = function () {      
      $scope.idea.$save();
     }    


    //Login Form 
    $scope.opts = {
	    backdrop: true,
	    keyboard: true,
	    backdropClick: false,
	    dialogFade: true,
	    templateUrl: 'views/login.html',	
	    controller: 'LoginCtrl'	   
	};

	$scope.validateSession = function(){
	    var d = $dialog.dialog($scope.opts);
	    d.open().then(function(result){
	      if(result)
	      {
	        alert('dialog closed with result: ' + result);
	      }
	    });
	  };

        
  });
