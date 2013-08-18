'use strict';

describe('AppWishApp', function() {

    beforeEach(function() {
        browser().navigateTo('/#/user/1');
    });

    describe('User Page', function() {

        it('should display the correct route', function() {
            expect(browser().location().path()).toBe('/user/1');
        });

        describe('Create Idea Form', function() {
            it('should have a create idea form', function(){
                expect(element('form[name="create-idea-frm"]', 'Create Idea Form').count()).toBe(1);
            }); 
        })

        describe('Idea List', function() {    
            it('should have a list of user created ideas', function(){
                expect(repeater('#user-ideas .idea', 'User Ideas').count()).toBeGreaterThan(1);                
            });

            it('should have a list of liked ideas', function(){
                expect(repeater('#liked-ideas .idea', 'Liked Ideas').count()).toBeGreaterThan(1);                
            });


            describe('Idea', function () {
                
                it('should have a title', function () {
                   expect(element('.idea .title', 'Title').count()).toBeGreaterThan(0);  
                });

                it('should have a user', function () {
                   expect(element('.idea .user', 'User').count()).toBeGreaterThan(0);  
                });

                it('should have a body', function () {
                   expect(element('.idea .body', 'Body').count()).toBeGreaterThan(0);  
                });

                it('should have a comment count', function () {
                   expect(element('.idea .comments', 'Comments').count()).toBeGreaterThan(0);                   
                });

                it('should have a like count', function () {
                   expect(element('.idea .likes', 'Likes').count()).toBeGreaterThan(0);  
                });
               
            });
        })
       
        
    });
});