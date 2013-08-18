'use strict';

describe('Controller: MainCtrl', function () {

  // load the controller's module
  beforeEach(module('AppWishApp'));

  var MainCtrl,
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

    MainCtrl = $controller('MainCtrl', {
      $scope: scope
    });
    

  }));

  describe('List of Ideas', function () {
    it('Should attach a list of Fresh-Ideas to the Scope', function () {
      $httpBackend.flush();
      expect(scope.freshIdeas.length).toBeGreaterThan(0);
    });

    it('Should attach a list of Top-Ideas to the Scope', function () {
      $httpBackend.flush();
      expect(scope.topIdeas.length).toBeGreaterThan(0);
    });
  });

  describe('Idea Submission', function () {
    it('Should submit an idea', function () {
      var newIdea = {
          name : 'Some Idea',
          body : 'Some Body'
      }
      scope.submitIdea(newIdea);   
      $httpBackend.flush();
      expect(scope.idea.title).toBe('What a great idea');
    });
  });

});
