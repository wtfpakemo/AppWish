package com.appwish.domain;
import org.junit.After;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;
import org.springframework.util.Assert;

@RooIntegrationTest(entity = UserAccount.class, transactional = false)
public class UserAccountIntegrationTest {

    @Test
    public void testMarkerMethod() {
    	
    	
    }
    
    @Test
    public void getValidation(){
    	UserAccount user = new UserAccount();
    	user.setName("test user");
    	user.setEmail("usertest@test.com");
    	
    	this.userAccountRepository.save(user);
    	System.out.println(this.userAccountRepository.findByEmail(user.getEmail()));
    	
    }
    
    @After
    public void tearDown() throws Exception {
    	this.userAccountRepository.deleteAll();
    }
    
}
