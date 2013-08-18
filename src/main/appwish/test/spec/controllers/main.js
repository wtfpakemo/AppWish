'use strict';

describe('Controller: MainCtrl', function () {

  // load the controller's module
  beforeEach(module('AppWishApp'));

  var MainCtrl,
      scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();


    MainCtrl = $controller('MainCtrl', {
      $scope: scope
    });
    

  }));

  describe('Fresh Ideas', function () {
    it('Should attach a list of Fresh-Ideas to the Scope', function () {
      expect(scope.freshIdeas.length).toBeGreaterThan(0);
    });
  });

});
