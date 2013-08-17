package com.appwish.domain;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;
import org.springframework.util.Assert;

@RooIntegrationTest(entity = UserAccount.class, transactional = false)
public class UserAccountIntegrationTest {

    @Test
    public void testMarkerMethod() {
    	
    	
    }
    
    @Test
    public void testGetUserIdeas() {
    	UserAccount user = createUser();
    	
    	//Assert.isTrue(user.getIdeas(),"" );
    }

	private UserAccount createUser() {
		
		return null;
	}
    
}
