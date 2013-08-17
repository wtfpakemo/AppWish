'use strict';

describe('Controller: IdeaCtrl', function () {

  // load the controller's module
  beforeEach(module('AppWishApp'));

  var IdeaCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    IdeaCtrl = $controller('IdeaCtrl', {
      $scope: scope
    });
  }));

  it('should attach an idea to the scope', function () {
    expect(scope.idea.title).toBeDefined();
  });

  it('should attach a comment to the scope.idea', function () {    
    expect(scope.idea.comments.length).toBeGreaterThan(0);
  });
});
