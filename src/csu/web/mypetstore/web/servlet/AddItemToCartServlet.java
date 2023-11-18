package csu.web.mypetstore.web.servlet;

import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.domain.Cart;
import csu.web.mypetstore.domain.Item;
import csu.web.mypetstore.service.CatalogService;
import csu.web.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AddItemToCartServlet extends HttpServlet  {
    private CatalogService catalogService;

    private static final String CART_FORM = "/WEB-INF/jsp/cart/cart.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String workingItemId = req.getParameter("workingItemId");

        Account account;
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        account = (Account) session.getAttribute("loginAccount");

        if(cart == null){
            cart = new Cart();
        }

        if (cart.containsItemId(workingItemId)) {
            cart.incrementQuantityByItemId(workingItemId);
            //已有该物品，数量加一
            if(account != null){
                HttpServletRequest httpRequest= (HttpServletRequest) req;
                String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                LogService logService = new LogService();
                Item item = catalogService.getItem(workingItemId);
                String logInfo = logService.logInfo(" ") + strBackUrl + " " + item + "数量+1 ";
                logService.insertLogInfo(account.getUsername(), logInfo);
            }
        } else {
            catalogService = new CatalogService();
            boolean isInStock = catalogService.isItemInStock(workingItemId);
            Item item = catalogService.getItem(workingItemId);
            cart.addItem(item, isInStock);

            if(account != null){
                HttpServletRequest httpRequest= req;
                String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                LogService logService = new LogService();
                String logInfo = logService.logInfo(" ") + strBackUrl + " 添加物品 " + item + " 到购物车";
                logService.insertLogInfo(account.getUsername(), logInfo);
            }
        }
        session.setAttribute("cart", cart);
        req.getRequestDispatcher(CART_FORM).forward(req, resp);
    }
}
