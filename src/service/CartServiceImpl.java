package service;

import dao.HibernateUserCartDAO;
import model.UserCart;
import dao.UserCartDAO;

import java.util.List;

public class CartServiceImpl implements CartService {

    private UserCartDAO userCartDAO = new HibernateUserCartDAO();

    @Override
    public List<UserCart> getUserCart() {
        return userCartDAO.getUserCart();
    }

    @Override
    public void addToCart(int productId) {
        userCartDAO.addToCart(productId);
    }
}
