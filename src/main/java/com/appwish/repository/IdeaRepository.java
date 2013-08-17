package com.appwish.repository;
import com.appwish.domain.Idea;
import com.appwish.domain.UserAccount;

import java.util.List;

import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Idea.class)
public interface IdeaRepository {

    List<Idea> findAll();
    List<Idea> findByUserAccount(UserAccount userAccount);
    
}
