package service;

import dao.ProductDAO;
import dao.HibernateProductDAO;
import model.Product;

import java.util.List;

public class ProductServiceImpl implements ProductService {

    private ProductDAO productDAO = new HibernateProductDAO();

    @Override
    public List<Product> getProducts() {
        return productDAO.getProducts();
    }

}
