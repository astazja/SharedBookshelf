package cz.pacewi.service;

import cz.pacewi.model.User;

import java.util.List;
import java.util.Optional;

public interface UserService {
    List<User> allUsers();
    Optional<User> getUser(Long id);
    void addUser(User user);
    void updateUser(User user);
    void removeUser(Long id);
    User findByUserName(String username);
}
