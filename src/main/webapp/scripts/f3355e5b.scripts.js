"use strict";angular.module("AppWishApp",["ngResource"]).config(["$routeProvider",function(a){a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl"}).when("/testpage",{templateUrl:"views/testpage.html",controller:"TestpageCtrl"}).when("/idea",{templateUrl:"views/idea.html",controller:"IdeaCtrl"}).otherwise({redirectTo:"/"})}]),angular.module("AppWishApp").controller("MainCtrl",["$scope",function(a){a.freshIdeas=[];for(var b=1;6>b;b++){var c={title:"What a great idea "+b,user:{name:"User "+b,email:"user@email.com"},dateCreated:"12-12-2013",comments:[{user:{name:"Commenter "+b,email:"commenter@email.com"},dateCreated:"12-13-2013",body:"Some comment!"}],likes:[{user:{name:"Liker"+b,email:"liker@email.com"}}],body:"A very awesome description"};a.freshIdeas.push(c)}a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"]}]),angular.module("AppWishApp").controller("IdeaCtrl",["$scope",function(a){a.idea={title:"What a great idea ",user:{name:"User ",email:"user@email.com"},dateCreated:"12-12-2013",comments:[{user:{name:"Commenter ",email:"commenter@email.com"},dateCreated:"12-13-2013",body:"Some comment!"}],likes:[{user:{name:"Liker",email:"liker@email.com"}}],body:"A very awesome description"}}]),angular.module("AppWishApp").factory("idea",["$window","$resource",function(a,b){var c="../";return"localhost"===a.location.hostname&&(c="/AppWish/"),b(c+"ideas.json/:id",{id:"@id"})}]);