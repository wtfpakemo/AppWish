// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.appwish.repository;

import com.appwish.domain.Idea;
import com.appwish.repository.IdeaRepository;
import java.math.BigInteger;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

privileged aspect IdeaRepository_Roo_Mongo_Repository {
    
    declare parents: IdeaRepository extends PagingAndSortingRepository<Idea, BigInteger>;
    
    declare @type: IdeaRepository: @Repository;
    
}
