package dao;

import model.Product;
import util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public class HibernateProductDAO implements ProductDAO {

    @Override
    public List<Product> getProducts() {
        Session currentSession = HibernateUtil.getSessionFactory().getCurrentSession();
        currentSession.beginTransaction();
        Query<Product> query = currentSession.createQuery("select a from Product a", Product.class);
        List<Product> products = query.getResultList();
        currentSession.getTransaction().commit();
        return products;
    }
}