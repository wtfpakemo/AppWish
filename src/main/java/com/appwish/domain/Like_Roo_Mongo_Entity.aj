// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.appwish.domain;

import com.appwish.domain.Like;
import java.math.BigInteger;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Persistent;

privileged aspect Like_Roo_Mongo_Entity {
    
    declare @type: Like: @Persistent;
    
    @Id
    private BigInteger Like.id;
    
    public BigInteger Like.getId() {
        return this.id;
    }
    
    public void Like.setId(BigInteger id) {
        this.id = id;
    }
    
}
