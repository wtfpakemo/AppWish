package com.appwish.repository;
import com.appwish.domain.Comment;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = Comment.class)
public interface CommentRepository {

    List<Comment> findAll();
}
