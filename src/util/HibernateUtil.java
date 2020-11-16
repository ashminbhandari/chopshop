package util;

import model.Product;
import model.UserCart;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    private static SessionFactory factory;

    private HibernateUtil() {}

    public static synchronized SessionFactory getSessionFactory() {
        if (factory == null) {
            factory = new Configuration()
                    .configure()
                    .addAnnotatedClass(Product.class)
                    .addAnnotatedClass(UserCart.class)
                    .buildSessionFactory();
        }
        return factory;
    }
}
