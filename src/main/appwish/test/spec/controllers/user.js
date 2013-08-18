'use strict';

describe('Controller: UserCtrl', function () {

  // load the controller's module
  beforeEach(module('AppWishApp'));

  var UserCtrl,
     scope,
      $httpBackend,
      idea;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope, _$httpBackend_, _idea_) {
    scope = $rootScope.$new();
    $httpBackend = _$httpBackend_;
    idea = _idea_;

    //Mock all ideas query
    $httpBackend.when('GET', '/AppWish/ideas.json').respond(mockIdeas);

    //Mock all ideas query
    $httpBackend.when('POST', '/AppWish/ideas.json').respond(mockIdea);

    UserCtrl = $controller('UserCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of user posted ideas to the scope', function () {
    $httpBackend.flush();
    expect(scope.ideas.length).toBe(5);
  });
});
