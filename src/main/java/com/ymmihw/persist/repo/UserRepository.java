package com.ymmihw.persist.repo;

import com.ymmihw.persist.model.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {}
