'use strict';

angular.module('AppWishApp', ['ngResource','ui.bootstrap'])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/testpage', {
        templateUrl: 'views/testpage.html',
        controller: 'TestpageCtrl'
      })
      .when('/idea/:id', {
        templateUrl: 'views/idea.html',
        controller: 'IdeaCtrl'
      })
      .when('/user/:id', {
        templateUrl: 'views/user.html',
        controller: 'UserCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  })
