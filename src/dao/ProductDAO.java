package dao;

import model.Product;

import java.util.List;

public interface ProductDAO {
    List<Product> getProducts();
    Product getProductById(int id);
}