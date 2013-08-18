'use strict';

angular.module('AppWishApp')
  .controller('UserCtrl', function ($scope, idea) {
    $scope.ideas = idea.query();
  });
