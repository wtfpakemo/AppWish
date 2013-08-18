'use strict';

describe('Service: idea', function () {

  // load the service's module
  beforeEach(module('AppWishApp'));

  // instantiate service
  var idea,
      $httpBackend;

  beforeEach(inject(function (_idea_,_$httpBackend_) {
    idea = _idea_;
    $httpBackend = _$httpBackend_;

    //Mock all ideas query
    $httpBackend.when('GET', '/AppWish/ideas.json').respond(mockIdeas);
  }));

  it('should do something', function () {
    expect(!!idea).toBe(true);
  });

  it('should fetch all ideas', function () {
    var ideas = idea.query();
    $httpBackend.flush();
    expect(ideas.length).toBeGreaterThan(0); 
    expect(ideas.length).not.toBe(undefined);    
  });

});
