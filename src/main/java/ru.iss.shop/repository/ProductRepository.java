package ru.iss.shop.repository;


import org.springframework.data.repository.CrudRepository;
import ru.iss.shop.domain.Product;

import java.util.List;

public interface ProductRepository extends CrudRepository<Product, Long> {
    List<Product> findAllByName(String name);
    List<Product> findAllByNameContainingIgnoreCase(String name);
}
