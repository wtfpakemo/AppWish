// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.appwish.domain;

import com.appwish.domain.Like;
import com.appwish.domain.UserAccount;

privileged aspect Like_Roo_JavaBean {
    
    public UserAccount Like.getUserAccount() {
        return this.userAccount;
    }
    
    public void Like.setUserAccount(UserAccount userAccount) {
        this.userAccount = userAccount;
    }
    
}