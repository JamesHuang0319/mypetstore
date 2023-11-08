package csu.web.mypetstore.persistence;

import csu.web.mypetstore.domian.Item;

import java.util.List;

import java.util.Map;

public interface ItemDao {
    void updateInventoryQuantity(Map<String, Object> param);

    int getInventoryQuantity(String itemId);

    List<Item> getItemListByProduct(String productId);

    Item getItem(String itemId);
}
