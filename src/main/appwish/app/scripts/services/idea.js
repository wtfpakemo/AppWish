'use strict';

angular.module('AppWishApp')
  .factory('idea', function ($window, $resource) {
    var absUrl = '../';
    if($window.location.hostname === 'localhost') absUrl = "/AppWish/";

    // Public API here
    return $resource(absUrl + 'ideas.json/:id', { id : '@id'});
  });
