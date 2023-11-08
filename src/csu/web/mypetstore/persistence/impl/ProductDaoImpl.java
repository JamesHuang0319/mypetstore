package csu.web.mypetstore.persistence.impl;

import csu.web.mypetstore.domian.Product;
import csu.web.mypetstore.persistence.DBUtil;
import csu.web.mypetstore.persistence.ProductDao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements ProductDao {
    private static final String getProductListByCategoryString =
            "SELECT PRODUCTID,NAME,DESCN as description,CATEGORY as categoryId FROM PRODUCT WHERE CATEGORY=?";
    private static final String getProductString =
            "SELECT PRODUCTID,NAME,DESCN as description,CATEGORY as categoryId FROM PRODUCT WHERE PRODUCTID = ?";
    private static final String searchProductListString =
            "SELECT PRODUCTID,NAME,DESCN as description,CATEGORY as categoryId from PRODUCT WHERE lower(name) like ?";
    @Override
    public List<Product> getProductListByCategory(String categoryId) {
        List<Product> productList = new ArrayList<>();
        try{
            Connection connection = DBUtil.getConnection();
            Statement statement = connection.createStatement();


        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Product getProduct(String productId) {
        return null;
    }

    @Override
    public List<Product> searchProductList(String keywords) {
        return null;
    }
}
