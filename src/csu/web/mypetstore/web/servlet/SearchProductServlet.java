package csu.web.mypetstore.web.servlet;

import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.domain.Product;
import csu.web.mypetstore.service.CatalogService;
import csu.web.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class SearchProductServlet extends HttpServlet {
    private static final String SEARCH_PRODUCTS = "/WEB-INF/jsp/catalog/searchProducts.jsp";

    private String keyword;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        keyword = req.getParameter("keyword");
        //request.setAttribute("keyword", keyword);
        CatalogService service = new CatalogService();
        List<Product> productList = service.searchProductList(keyword);

        //保存数据
        HttpSession session = req.getSession();
        session.setAttribute("keyword", keyword);

        session.setAttribute("productList", productList);

        Account account = (Account)session.getAttribute("loginAccount");

        if(account != null){
            HttpServletRequest httpRequest= req;
            String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

            LogService logService = new LogService();
            String logInfo = logService.logInfo(" ") + strBackUrl + " 查找商品" + "  " + productList;
            logService.insertLogInfo(account.getUsername(), logInfo);
        }

        //跳转页面
        req.getRequestDispatcher(SEARCH_PRODUCTS).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
