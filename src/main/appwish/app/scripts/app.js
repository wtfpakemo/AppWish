'use strict';

angular.module('AppWishApp', ['ngResource'])
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
      .when('/idea', {
        templateUrl: 'views/idea.html',
        controller: 'IdeaCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  })
