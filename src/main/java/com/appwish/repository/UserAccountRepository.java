package com.appwish.repository;
import com.appwish.domain.UserAccount;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = UserAccount.class)
public interface UserAccountRepository {

    List<UserAccount> findAll();
}
