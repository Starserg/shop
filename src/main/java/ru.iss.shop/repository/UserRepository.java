package ru.iss.shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.iss.shop.domain.User;


public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);

    User findByNickname(String nickname);
}
