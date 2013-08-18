package com.appwish.domain;
import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Feature.class, transactional = false)
public class FeatureIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
    
    public void mockFeature(){
    	Feature ft = new Feature();
    	ft.setName("Login w/ Facebook");
    	ft.setRequestCount(3);
    	ft.setMessage("test message");
    	
    	this.featureRepository.save(ft);
    	
    	Feature ft1 = new Feature();
    	ft1.setName("Login w/ Twitter");
    	ft1.setRequestCount(2);
    	ft1.setMessage("test message twitter");
    	
    	this.featureRepository.save(ft1);
    	
    }
    
    @Test
    public void testGetAllFeatures(){
    	mockFeature();
    	
    	System.out.println(this.featureRepository.findAll().size());
    }
}
