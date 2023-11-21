package csu.web.mypetstore.service;

import csu.web.mypetstore.domain.Cart;
import csu.web.mypetstore.persistence.CartDao;
import csu.web.mypetstore.persistence.impl.CartDaoImpl;

public class CartService {
    Cart cart;
    CartDao cartDao;
    public CartService(){
        cart = new Cart();
        cartDao = new CartDaoImpl();
    }

    public void insertCart(String username, String itemid, int quantity){
        cartDao.insertCart(username, itemid, quantity);
    }

    public Cart getCart(String username) {
        return cartDao.getCart(username);
    }
}
