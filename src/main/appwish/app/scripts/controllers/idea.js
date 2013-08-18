'use strict';

angular.module('AppWishApp')
  .controller('IdeaCtrl', function ($scope) {

    
    	$scope.idea = {
	  		title : 'Report Crime App',
	  		user : { name : 'User ', email : 'user@email.com' },
	  		dateCreated : '12-12-2013',
	  		comments : [{ user : { name : 'Commenter ', email : 'commenter@email.com'},
	  				   	 dateCreated: '12-13-2013',
	  				   	 body : 'Some comment!'},
	  				   	 { user : { name : 'Commenter 2', email : 'commenter@email.com'},
	  				   	 dateCreated: '12-13-2013',
	  				   	 body : 'Some mildly long comment!'}],
	  		likes : [{ user : { name : 'Liker', email : 'liker@email.com'}}],
	  		body : 'A very long and super awesome description that really has nothing to say.'
	  	};

  });
