package com.appwish.domain;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Idea.class, transactional = false)
public class IdeaIntegrationTest {

    @Test
    public void testMarkerMethod() {
    	
    	Idea idea = new Idea();
    	UserAccount user1 = new UserAccount();
    	user1.setName("user1");
    	user1.setCurrentDate();

    	//System.out.println(user1.getDateReg());
    	
    	idea.setUserAccount(user1);
    	Comment comment = new Comment();
    	comment.setBody("long ass first comment");
    	comment.setUserAccount(user1);
    	comment.setCurrentDate();

    	idea.addComment(comment);
    	idea.setCurrentDate();
    	Like like = new Like();
    	like.setUserAccount(user1);
    	
    	idea.addLikes(like);
    	
    	this.ideaRepository.save(idea);

    	
    }
}
