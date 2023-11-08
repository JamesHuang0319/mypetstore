package csu.web.mypetstore.web.servlet;

import csu.web.mypetstore.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CategoryFormServlet extends HttpServlet{
    private CatalogService catalogService;

    private static final String CATEGORY_FORM = "/WEB-INF/jsp/catalog/category.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
