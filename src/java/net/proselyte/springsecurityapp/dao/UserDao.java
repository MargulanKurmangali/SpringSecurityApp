package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.User;

public interface UserDao extends JpaRepository<User,Long> {
    User findByUsername(String username);

    void save(User user);
}
