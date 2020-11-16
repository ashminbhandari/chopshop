package model;

import javax.persistence.*;

@Entity
@Table(name="user_cart")
public class UserCart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="product_id")
    private int product_id;

    public UserCart() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return product_id;
    }

    public void setProductId(int product_id) {
        this.product_id = product_id;
    }

    @Override
    public String toString() {
        return "Product [id=" + id + ", product_id=" + product_id + "]";
    }

}

