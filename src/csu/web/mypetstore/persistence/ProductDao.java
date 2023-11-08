package csu.web.mypetstore.persistence;

import csu.web.mypetstore.domian.Product;

import java.util.List;

public interface ProductDao {
    List<Product> getProductListByCategory(String categoryId);

    Product getProduct(String productId);

    List<Product> searchProductList(String keywords);
}
