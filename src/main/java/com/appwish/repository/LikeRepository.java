package com.appwish.repository;
import com.appwish.domain.Like;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Like.class)
public interface LikeRepository {

    List<Like> findAll();
}
