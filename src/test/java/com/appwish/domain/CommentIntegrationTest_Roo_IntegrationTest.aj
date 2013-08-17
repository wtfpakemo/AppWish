// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.appwish.domain;

import com.appwish.domain.CommentDataOnDemand;
import com.appwish.domain.CommentIntegrationTest;
import com.appwish.repository.CommentRepository;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

privileged aspect CommentIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CommentIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CommentIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    @Autowired
    CommentDataOnDemand CommentIntegrationTest.dod;
    
    @Autowired
    CommentRepository CommentIntegrationTest.commentRepository;
    
    @Test
    public void CommentIntegrationTest.testCount() {
        Assert.assertNotNull("Data on demand for 'Comment' failed to initialize correctly", dod.getRandomComment());
        long count = commentRepository.count();
        Assert.assertTrue("Counter for 'Comment' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CommentIntegrationTest.testFind() {
        Comment obj = dod.getRandomComment();
        Assert.assertNotNull("Data on demand for 'Comment' failed to initialize correctly", obj);
        BigInteger id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Comment' failed to provide an identifier", id);
        obj = commentRepository.findOne(id);
        Assert.assertNotNull("Find method for 'Comment' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Comment' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void CommentIntegrationTest.testFindAll() {
        Assert.assertNotNull("Data on demand for 'Comment' failed to initialize correctly", dod.getRandomComment());
        long count = commentRepository.count();
        Assert.assertTrue("Too expensive to perform a find all test for 'Comment', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Comment> result = commentRepository.findAll();
        Assert.assertNotNull("Find all method for 'Comment' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Comment' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CommentIntegrationTest.testFindEntries() {
        Assert.assertNotNull("Data on demand for 'Comment' failed to initialize correctly", dod.getRandomComment());
        long count = commentRepository.count();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Comment> result = commentRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
        Assert.assertNotNull("Find entries method for 'Comment' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Comment' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CommentIntegrationTest.testSave() {
        Assert.assertNotNull("Data on demand for 'Comment' failed to initialize correctly", dod.getRandomComment());
        Comment obj = dod.getNewTransientComment(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Comment' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Comment' identifier to be null", obj.getId());
        try {
            commentRepository.save(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        Assert.assertNotNull("Expected 'Comment' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void CommentIntegrationTest.testDelete() {
        Comment obj = dod.getRandomComment();
        Assert.assertNotNull("Data on demand for 'Comment' failed to initialize correctly", obj);
        BigInteger id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Comment' failed to provide an identifier", id);
        obj = commentRepository.findOne(id);
        commentRepository.delete(obj);
        Assert.assertNull("Failed to remove 'Comment' with identifier '" + id + "'", commentRepository.findOne(id));
    }
    
}
