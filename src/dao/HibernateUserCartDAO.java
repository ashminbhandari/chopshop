package dao;

import model.Product;
import model.UserCart;

import util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class HibernateUserCartDAO implements UserCartDAO {

    @Override
    public List<UserCart> getUserCart() {
        Session currentSession = HibernateUtil.getSessionFactory().getCurrentSession();
        currentSession.beginTransaction();
        Query<UserCart> query = currentSession.createQuery("select a from UserCart a", UserCart.class);
        List<UserCart> userCart = query.getResultList();
        currentSession.getTransaction().commit();
        return userCart;
    }

    @Override
    public void addToCart(int productId) {
        Session currentSession = HibernateUtil.getSessionFactory().getCurrentSession();
        currentSession.beginTransaction();
        UserCart cartItem = new UserCart();
        cartItem.setProductId(productId);
        currentSession.save(cartItem);
        currentSession.getTransaction().commit();
    }
}