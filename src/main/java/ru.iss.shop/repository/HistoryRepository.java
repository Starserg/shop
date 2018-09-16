package ru.iss.shop.repository;

import org.springframework.data.repository.CrudRepository;
import ru.iss.shop.domain.History;
import ru.iss.shop.domain.User;

import java.util.List;

public interface HistoryRepository extends CrudRepository<History, Long> {
    List<History> findAllByUser(User user);
}
