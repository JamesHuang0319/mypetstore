package csu.web.mypetstore.web.servlet;

import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.domain.Item;
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

public class ProductFormServlet extends HttpServlet {
    private CatalogService catalogService;

    private static final String PRODUCT_FORM = "/WEB-INF/jsp/catalog/product.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productID = req.getParameter("productId");
        catalogService = new CatalogService();
        Product product = catalogService.getProduct(productID);
        List<Item> itemList = catalogService.getItemListByProduct(productID);

        HttpSession session = req.getSession();
        session.setAttribute("product" , product);
        session.setAttribute("itemList" , itemList);
        req.getRequestDispatcher(PRODUCT_FORM).forward(req,resp);

        //HttpSession session = request.getSession();
        Account account = (Account)session.getAttribute("loginAccount");

        if(account != null){
            HttpServletRequest httpRequest= req;
            String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

            LogService logService = new LogService();
            String logInfo = logService.logInfo(" ") + strBackUrl + " 查看产品 " + product;
            logService.insertLogInfo(account.getUsername(), logInfo);
        }
    }
}
