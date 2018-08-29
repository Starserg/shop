package ru.iss.shop.repository;


import org.springframework.data.repository.CrudRepository;
import ru.iss.shop.domain.Product;

public interface ProductRepository extends CrudRepository<Product, Long> {
}
