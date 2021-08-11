package com.ymmihw;

import com.ymmihw.persist.model.User;
import com.ymmihw.persist.repo.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@RequiredArgsConstructor
public class App {
  private final UserRepository userRepository;
  public static void main(String[] args) {
    SpringApplication.run(App.class, args);
  }

  @GetMapping("/{id}")
  public User getUser(@PathVariable("id") Long id){
    return userRepository.findById(id).orElse(null);
  }

}
