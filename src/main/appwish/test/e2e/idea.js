'use strict';

describe('AppWishApp', function() {

    beforeEach(function() {
        browser().navigateTo('/#/idea/1');
    });

   describe('Idea Page', function() {

        it('should display the correct route', function() {
            expect(browser().location().path()).toBe('/idea/1');
        });

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

        describe('Comment List', function () {
            it('Should have a list of comments', function () {
                expect(repeater('#comments .comment', 'Comment').count()).toBeGreaterThan(0);
            });

            describe('Comment', function () {

                it('should have a body', function () {
                   expect(element('.comment .body', 'Body').count()).toBeGreaterThan(0);  
                });

                it('should have a user', function () {
                   expect(element('.comment .user', 'User').count()).toBeGreaterThan(0);  
                });
               
            });
        });

        describe('Create Comment Form', function () {
            it('Should have a create comment form', function () {
                expect(element('form[name="create-comment-frm"]', 'Create Comment Form').count()).toBe(1);  
            });

            describe('Comment', function () {

                it('should have a body', function () {
                   expect(element('.comment .body', 'Body').count()).toBeGreaterThan(0);  
                });

                it('should have a user', function () {
                   expect(element('.comment .user', 'User').count()).toBeGreaterThan(0);  
                });
               
            });
        });
        
    });
});