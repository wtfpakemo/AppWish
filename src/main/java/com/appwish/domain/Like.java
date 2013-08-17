package com.appwish.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooMongoEntity
@RooJson(deepSerialize = true)
public class Like {

    /**
     */
    @ManyToOne
    private UserAccount userAccount;
}
