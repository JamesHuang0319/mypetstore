package csu.web.mypetstore.web.servlet;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.domain.Cart;
import csu.web.mypetstore.domain.CartItem;
import csu.web.mypetstore.persistence.CartDao;
import csu.web.mypetstore.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

public class UpdateCartQuantityAJAXServlet extends HttpServlet {
    private Cart cart;

    private CartService cartService;

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Account account = (Account)session.getAttribute("loginAccount");



        cartService = new CartService();
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        String itemId = req.getParameter("itemId");
        String quantityString = req.getParameter("quantity");
        int quantity = Integer.parseInt(quantityString);
        Iterator<CartItem> cartItems = cart.getAllCartItems();
        while (cartItems.hasNext()){
            CartItem cartItem = (CartItem) cartItems.next();
            //插入cart数据库
            if(account != null){
                String username = account.getUsername();
                cartService.insertCart(username,itemId,quantity);
            }
        }
        try {

            cart.setQuantityByItemId(itemId, quantity);
            if (quantity < 1) {
                cart.removeItemById(itemId);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        resp.setContentType("application/json");
        PrintWriter out = resp.getWriter();

        JSONObject jsonResponse = new JSONObject();
        jsonResponse.put("status", "success");

        JSONArray itemsTotalArray = new JSONArray();
        Iterator<CartItem> cartItemsIterator = cart.getAllCartItems();
        while (cartItemsIterator.hasNext()) {
            CartItem item = cartItemsIterator.next();
            JSONObject itemTotal = new JSONObject();
            itemTotal.put("itemId", item.getItem().getItemId());
            itemTotal.put("total", item.getTotal()); // getTotal() 应返回每个项目的总价
            itemsTotalArray.add(itemTotal);
        }

        jsonResponse.put("itemsTotal", itemsTotalArray);
        out.print(jsonResponse.toString());
    }


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
