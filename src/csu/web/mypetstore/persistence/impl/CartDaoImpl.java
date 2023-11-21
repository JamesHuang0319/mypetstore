package csu.web.mypetstore.persistence.impl;

import csu.web.mypetstore.domain.Cart;
import csu.web.mypetstore.domain.CartItem;
import csu.web.mypetstore.domain.Item;
import csu.web.mypetstore.persistence.CartDao;
import csu.web.mypetstore.persistence.DBUtil;
import csu.web.mypetstore.service.CatalogService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CartDaoImpl implements CartDao {
    String INSERT_CART = "insert into cart (username, itemid, quantity) VALUES (?, ?, ?)";

    String GET_ITEMID_AND_QUANTITY_BY_USERNAME = "SELECT itemid, quantity FROM cart WHERE username = ?";

    private CatalogService catalogService;

    public void insertCart(String username, String itemid, int quantity){
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = null;
            // 首先检查记录是否存在
            String checkQuery = "SELECT quantity FROM cart WHERE username = ? AND itemid = ?";
            preparedStatement = connection.prepareStatement(checkQuery);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, itemid);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // 如果记录存在，更新quantity
                String updateQuery = "UPDATE cart SET quantity = ? WHERE username = ? AND itemid = ?";
                preparedStatement = connection.prepareStatement(updateQuery);
                preparedStatement.setInt(1, quantity);
                preparedStatement.setString(2, username);
                preparedStatement.setString(3, itemid);
            } else {
                // 关闭之前的 preparedStatement
                DBUtil.closePreparedStatement(preparedStatement);

                // 如果记录不存在，插入新记录
                String insertQuery = "INSERT INTO cart (username, itemid, quantity) VALUES (?, ?, ?)";
                preparedStatement = connection.prepareStatement(insertQuery);
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, itemid);
                preparedStatement.setInt(3, quantity);
            }
            preparedStatement.executeUpdate();
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public Cart getCart(String username){
        Cart cart = new Cart();
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ITEMID_AND_QUANTITY_BY_USERNAME);
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            catalogService = new CatalogService();

            while(resultSet.next()){
                String itemid = resultSet.getString("itemid");
                int quantity = resultSet.getInt("quantity");

                Item item = catalogService.getItem(itemid);
                cart.addItem(item, true);
                cart.setQuantityByItemId(itemid,quantity);


                Iterator<CartItem> cartItems = cart.getAllCartItems();
                System.out.println("cart "+cartItems);
                while (cartItems.hasNext()){
                    CartItem cartItem = (CartItem) cartItems.next();
                    String itemId = cartItem.getItem().getItemId();
                    int aquantity = cartItem.getQuantity();
                    System.out.println("cart "+itemId);
                    System.out.println("cart "+ aquantity);
                }
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);

        }catch (Exception e){
            e.printStackTrace();
        }
        return cart;
    }
}
