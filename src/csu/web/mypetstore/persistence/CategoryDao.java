package csu.web.mypetstore.persistence;

import csu.web.mypetstore.domian.Category;

import java.util.List;

public interface CategoryDao {
    List<Category> getCategoryList();

    Category getCategory(String categoryId);
}
