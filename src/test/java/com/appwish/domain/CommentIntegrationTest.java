package com.appwish.domain;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Comment.class, transactional = false)
public class CommentIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}
