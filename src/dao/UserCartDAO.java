package dao;

import model.UserCart;
import model.Product;

import java.util.List;

public interface UserCartDAO {
    List<UserCart> getUserCart(); //should probably be name user cart item
    void addToCart(int productId);
}