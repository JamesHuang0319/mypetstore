package csu.web.mypetstore.web.servlet;

import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.domain.Cart;
import csu.web.mypetstore.domain.CartItem;
import csu.web.mypetstore.persistence.CartDao;
import csu.web.mypetstore.persistence.impl.CartDaoImpl;
import csu.web.mypetstore.service.CartService;
import csu.web.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Iterator;

public class MainFormServlet extends HttpServlet {
    private static final String MAIN_FORM = "/WEB-INF/jsp/catalog/main.jsp";

    private CartService cartService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Account account = (Account)session.getAttribute("loginAccount");

        if(account != null){
            cartService = new CartService();
            Cart cart = cartService.getCart(account.getUsername());
            System.out.println(account.getUsername());
            session.setAttribute("cart", cart);

            Iterator<CartItem> cartItems = cart.getAllCartItems();
            System.out.println("main "+cartItems);
            while (cartItems.hasNext()){
                CartItem cartItem = (CartItem) cartItems.next();
                String itemId = cartItem.getItem().getItemId();
                int quantity = cartItem.getQuantity();
                System.out.println("main "+itemId);
                System.out.println("main "+quantity);
            }
        }

        if(account != null){
            HttpServletRequest httpRequest= req;
            String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

            LogService logService = new LogService();
            String logInfo = logService.logInfo(" ") + strBackUrl + " 跳转到主界面";
            logService.insertLogInfo(account.getUsername(), logInfo);
        }

        req.getRequestDispatcher(MAIN_FORM).forward(req,resp);
    }
}
