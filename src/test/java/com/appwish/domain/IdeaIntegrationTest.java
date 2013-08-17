package com.appwish.domain;
import org.junit.After;

import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;
import org.springframework.util.Assert;

@RooIntegrationTest(entity = Idea.class, transactional = false)
public class IdeaIntegrationTest {
	

    @Test
    public void testMarkerMethod() {
    	UserAccount newUser = new UserAccount();
    	
    	newUser.setName("new user");
    	newUser.setCurrentDate();
    	newUser.setEmail("test email");
    	
    	Idea newIdea = new Idea();
    	Idea newIdea1 = new Idea();
    	newIdea.setUserAccount(newUser);
    	newIdea1.setUserAccount(newUser);
    	newIdea.setTitle("test title");
    	newIdea1.setTitle("test two title");
    	
    	this.ideaRepository.save(newIdea);
    	this.ideaRepository.save(newIdea1);
    	
    	Idea mockIdea = mockIdea();
    	
    	this.ideaRepository.save(mockIdea);

    	System.out.println(this.ideaRepository.findByUserAccount(mockIdea.getUserAccount()));
	
    }
    
    @Test
    public void testCommentCount(){

    	Idea idea = mockIdea();
    	
    	int count = idea.getComments().size();
    	int x = 2;
    	System.out.println(count);
    	Assert.isTrue(count != x, "comments is more than " + x);
    	
    }
    
    @Test
    public void testLikeCount(){
    	
    	Idea idea = mockIdea();
    	
    	int count = idea.getLikes().size();
    	int x = 2;
    	System.out.println(count);
    	Assert.isTrue(count != x, "Likes is more than " + x);
    }
    
    public Idea mockIdea(){
    
    	Idea idea = new Idea();
    	UserAccount user1 = new UserAccount();
    	user1.setName("user1");
    	user1.setEmail("user1@test.com");
    	user1.setCurrentDate();

    	//System.out.println(user1.getDateReg());
    	
    	idea.setUserAccount(user1);
    	Comment comment = new Comment();
    	comment.setBody("long ass first comment");
    	comment.setUserAccount(user1);
    	comment.setCurrentDate();

    	idea.addComment(comment);
    	idea.setCurrentDate();
    	idea.setTitle("title");
    	Like like = new Like();
    	like.setUserAccount(user1);

    	Like like1 = new Like();
    	like1.setUserAccount(user1);
    	idea.addLikes(like1);
    	
    	this.ideaRepository.save(idea);
    	
    	return idea;
    	
    }
    
    
    
    @After
    public void tearDown() throws Exception {
    	this.ideaRepository.deleteAll();
    }
    

}
