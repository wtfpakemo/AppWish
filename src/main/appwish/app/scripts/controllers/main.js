'use strict';

angular.module('AppWishApp')
  .controller('MainCtrl', function ($scope) {

  	$scope.freshIdeas = [];

  	for(var i = 1; i < 6; i++) {

	  	var idea = {
	  		title : 'What a great idea ' + i,
	  		user : { name : 'User ' + i, email : 'user@email.com' },
	  		dateCreated : '12-12-2013',
	  		comments : [{ user : { name : 'Commenter ' + i, email : 'commenter@email.com'},
	  				   	 dateCreated: '12-13-2013',
	  				   	 body : 'Some comment!'}],	  		
	  		likes : [{ user : { name : 'Liker' + i, email : 'liker@email.com'}}],	  		
	  		body : 'A very awesome description'
	  	};

	  	$scope.freshIdeas.push(idea);

  	}

  	


  	/*
  	Tobe! Deleted
  	Scaffolded Sample =========================
  	 */

    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

      
  });
