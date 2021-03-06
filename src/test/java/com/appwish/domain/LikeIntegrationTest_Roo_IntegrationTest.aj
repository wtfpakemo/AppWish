// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.appwish.domain;

import com.appwish.domain.LikeDataOnDemand;
import com.appwish.domain.LikeIntegrationTest;
import com.appwish.repository.LikeRepository;
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

privileged aspect LikeIntegrationTest_Roo_IntegrationTest {
    
    declare @type: LikeIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: LikeIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    @Autowired
    LikeDataOnDemand LikeIntegrationTest.dod;
    
    @Autowired
    LikeRepository LikeIntegrationTest.likeRepository;
    
    @Test
    public void LikeIntegrationTest.testCount() {
        Assert.assertNotNull("Data on demand for 'Like' failed to initialize correctly", dod.getRandomLike());
        long count = likeRepository.count();
        Assert.assertTrue("Counter for 'Like' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void LikeIntegrationTest.testFind() {
        Like obj = dod.getRandomLike();
        Assert.assertNotNull("Data on demand for 'Like' failed to initialize correctly", obj);
        BigInteger id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Like' failed to provide an identifier", id);
        obj = likeRepository.findOne(id);
        Assert.assertNotNull("Find method for 'Like' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Like' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void LikeIntegrationTest.testFindAll() {
        Assert.assertNotNull("Data on demand for 'Like' failed to initialize correctly", dod.getRandomLike());
        long count = likeRepository.count();
        Assert.assertTrue("Too expensive to perform a find all test for 'Like', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Like> result = likeRepository.findAll();
        Assert.assertNotNull("Find all method for 'Like' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Like' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void LikeIntegrationTest.testFindEntries() {
        Assert.assertNotNull("Data on demand for 'Like' failed to initialize correctly", dod.getRandomLike());
        long count = likeRepository.count();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Like> result = likeRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
        Assert.assertNotNull("Find entries method for 'Like' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Like' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void LikeIntegrationTest.testSave() {
        Assert.assertNotNull("Data on demand for 'Like' failed to initialize correctly", dod.getRandomLike());
        Like obj = dod.getNewTransientLike(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Like' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Like' identifier to be null", obj.getId());
        try {
            likeRepository.save(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        Assert.assertNotNull("Expected 'Like' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void LikeIntegrationTest.testDelete() {
        Like obj = dod.getRandomLike();
        Assert.assertNotNull("Data on demand for 'Like' failed to initialize correctly", obj);
        BigInteger id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Like' failed to provide an identifier", id);
        obj = likeRepository.findOne(id);
        likeRepository.delete(obj);
        Assert.assertNull("Failed to remove 'Like' with identifier '" + id + "'", likeRepository.findOne(id));
    }
    
}
