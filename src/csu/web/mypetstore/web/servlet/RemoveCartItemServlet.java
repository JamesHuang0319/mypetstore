package csu.web.mypetstore.web.servlet;

import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.domain.Cart;
import csu.web.mypetstore.domain.Item;
import csu.web.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RemoveCartItemServlet extends HttpServlet {
    private static final String ERROR_FORM = "/WEB-INF/jsp/common/error.jsp";
    private static final String CART_FORM = "/WEB-INF/jsp/cart/cart.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        String workingItemId = req.getParameter("workingItemId");

        Item item = cart.removeItemById(workingItemId);

        if (item == null) {
            session.setAttribute("errorMsg", "Attempted to remove null CartItem from Cart.");

            Account account = (Account)session.getAttribute("loginAccount");

            if(account != null){
                HttpServletRequest httpRequest= req;
                String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                LogService logService = new LogService();
                String logInfo = logService.logInfo(" ") + strBackUrl + " 物品为空，不能移除";
                logService.insertLogInfo(account.getUsername(), logInfo);
            }

            req.getRequestDispatcher(ERROR_FORM).forward(req, resp);
        } else {
            Account account = (Account)session.getAttribute("loginAccount");

            if(account != null){
                HttpServletRequest httpRequest= req;
                String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                LogService logService = new LogService();
                String logInfo = logService.logInfo(" ") + strBackUrl + " " + item + " 已从购物车中移除";
                logService.insertLogInfo(account.getUsername(), logInfo);
            }

            req.getRequestDispatcher(CART_FORM).forward(req, resp);
        }
    }
}

