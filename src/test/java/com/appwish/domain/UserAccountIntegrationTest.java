package com.appwish.domain;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = UserAccount.class, transactional = false)
public class UserAccountIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}
