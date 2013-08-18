'use strict';

angular.module('AppWishApp')
  .controller('IdeaCtrl', function ($scope) {

    
    	$scope.idea = {
	  		title : 'What a great idea ',
	  		user : { name : 'User ', email : 'user@email.com' },
	  		dateCreated : '12-12-2013',
	  		comments : [{ user : { name : 'Commenter ', email : 'commenter@email.com'},
	  				   	 dateCreated: '12-13-2013',
	  				   	 body : 'Some comment!'}],
	  		likes : [{ user : { name : 'Liker', email : 'liker@email.com'}}],
	  		body : 'A very awesome description'
	  	};

  });
