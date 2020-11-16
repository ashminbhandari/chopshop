package service;

import model.UserCart;

import java.util.List;

public interface CartService {
    List<UserCart> getUserCart();
    void addToCart(int productId);
}
