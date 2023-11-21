package csu.web.mypetstore.persistence;

import csu.web.mypetstore.domain.Cart;

public interface CartDao {
    void insertCart(String username, String itemid, int quantity);

    Cart getCart(String username);
}
