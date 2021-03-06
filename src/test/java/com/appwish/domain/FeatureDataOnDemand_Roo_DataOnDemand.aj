// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.appwish.domain;

import com.appwish.domain.Feature;
import com.appwish.domain.FeatureDataOnDemand;
import com.appwish.repository.FeatureRepository;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect FeatureDataOnDemand_Roo_DataOnDemand {
    
    declare @type: FeatureDataOnDemand: @Component;
    
    private Random FeatureDataOnDemand.rnd = new SecureRandom();
    
    private List<Feature> FeatureDataOnDemand.data;
    
    @Autowired
    FeatureRepository FeatureDataOnDemand.featureRepository;
    
    public Feature FeatureDataOnDemand.getNewTransientFeature(int index) {
        Feature obj = new Feature();
        setMessage(obj, index);
        setName(obj, index);
        setRequestCount(obj, index);
        return obj;
    }
    
    public void FeatureDataOnDemand.setMessage(Feature obj, int index) {
        String message = "message_" + index;
        obj.setMessage(message);
    }
    
    public void FeatureDataOnDemand.setName(Feature obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public void FeatureDataOnDemand.setRequestCount(Feature obj, int index) {
        Integer requestCount = new Integer(index);
        obj.setRequestCount(requestCount);
    }
    
    public Feature FeatureDataOnDemand.getSpecificFeature(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Feature obj = data.get(index);
        BigInteger id = obj.getId();
        return featureRepository.findOne(id);
    }
    
    public Feature FeatureDataOnDemand.getRandomFeature() {
        init();
        Feature obj = data.get(rnd.nextInt(data.size()));
        BigInteger id = obj.getId();
        return featureRepository.findOne(id);
    }
    
    public boolean FeatureDataOnDemand.modifyFeature(Feature obj) {
        return false;
    }
    
    public void FeatureDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = featureRepository.findAll(new org.springframework.data.domain.PageRequest(from / to, to)).getContent();
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Feature' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Feature>();
        for (int i = 0; i < 10; i++) {
            Feature obj = getNewTransientFeature(i);
            try {
                featureRepository.save(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            data.add(obj);
        }
    }
    
}
