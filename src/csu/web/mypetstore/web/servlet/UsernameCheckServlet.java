package csu.web.mypetstore.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.alibaba.fastjson.JSONObject;
import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.service.AccountService;

public class UsernameCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        AccountService accountService = new AccountService();
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();

        JSONObject jsonResponse = new JSONObject();
        System.out.println("Checking username: " + username); // 打印正在检查的用户名
        Account account = accountService.getAccount(username);
        if (account != null) {
            System.out.println("Account exists: " + account.getUsername()); // 打印找到的账号信息
            jsonResponse.put("status", "Exist");
        } else {
            System.out.println("Account does not exist for username: " + username); // 打印未找到账号信息
            jsonResponse.put("status", "NotExist");
        }


        out.print(jsonResponse.toString());
        out.flush();
        out.close();
    }
}
