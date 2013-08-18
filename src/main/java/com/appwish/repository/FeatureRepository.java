package com.appwish.repository;
import com.appwish.domain.Feature;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Feature.class)
public interface FeatureRepository {

    List<Feature> findAll();
}
