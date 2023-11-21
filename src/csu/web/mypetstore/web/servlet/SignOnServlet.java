package csu.web.mypetstore.web.servlet;

import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.domain.Product;
import csu.web.mypetstore.service.AccountService;
import csu.web.mypetstore.service.CatalogService;
import csu.web.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class SignOnServlet extends HttpServlet {
    private static final String SIGN_ON_FORM = "/WEB-INF/jsp/account/signon.jsp";

    private String username;
    private String password;
    private String msg;

    private Account loginAccount;
    private AccountService accountService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        username = req.getParameter("username");
        password = req.getParameter("password");

        accountService = new AccountService();
        loginAccount = accountService.getAccount(username, password);

        session.setAttribute("loginAccount", loginAccount);


        if(loginAccount != null){
            HttpServletRequest httpRequest= req;
            String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

            LogService logService = new LogService();
            String logInfo = logService.logInfo(" ") + strBackUrl + " 用户登录";
            logService.insertLogInfo(loginAccount.getUsername(), logInfo);
        }

        //获得输入的验证码值
        String value1 = req.getParameter("vCode");
        /*获取图片的值*/
        String value2=(String)session.getAttribute("checkcode");
        Boolean isSame = false;
        /*对比两个值（字母不区分大小写）*/
        if(value2.equalsIgnoreCase(value1)){
            isSame = true;
            session.setAttribute("isSame",isSame);
        }

        //校验用户输入的正确性
        if(!validate()){
            req.setAttribute("signOnMsg", this.msg);
            req.getRequestDispatcher(SIGN_ON_FORM).forward(req,resp);
        }else{
            if(isSame){
//                AccountService accountService = new AccountService();
//                Account loginAccount = accountService.getAccount(username, password);
                System.out.println(loginAccount);
                if(loginAccount == null){
                    this.msg = "用户名或密码错误";
                    req.getRequestDispatcher(SIGN_ON_FORM).forward(req,resp);
                }else {

                    loginAccount.setPassword(null);
                    //HttpSession session = req.getSession();
                    session.setAttribute("loginAccount", loginAccount);

                    if (loginAccount.isListOption()) {
                        CatalogService catalogService = new CatalogService();
                        List<Product> myList = catalogService.getProductListByCategory(loginAccount.getFavouriteCategoryId());
                        session.setAttribute("myList", myList);
                    }
                    //请求重定位
                    resp.sendRedirect("mainForm");
                }
            }
            else {
                session.setAttribute("vsignOnMsg", "Invalid Verification Code.");
                req.getRequestDispatcher(SIGN_ON_FORM).forward(req,resp);
            }
        }
    }

    private boolean validate(){
        if(this.username == null || this.username.equals("")){
            this.msg = "用户名不能为空";
            return false;
        }
        if(this.password == null || this.password.equals("")){
            this.msg = "密码不能为空";
            return false;
        }
        return true;
    }
    public void checkRegisterUsername(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String username = req.getParameter("username");

        String regExp = "^[a-zA-Z0-9_-]{4,16}$";
        if (!username.matches(regExp)){
            resp.getWriter().print("false");
        }
        else {
            resp.getWriter().print("");
        }
    }
    public void checkRegisterPassword(HttpServletRequest req,HttpServletResponse resp) throws IOException {
        String password = req.getParameter("password");
        String regXp="^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$";
        if (!password.matches(regXp)){
            resp.getWriter().print("false");
        }
        else {
            resp.getWriter().print("true");
        }

    }
    public void checkRegisterPassword1(HttpServletRequest req,HttpServletResponse resp) throws IOException {
        String password = req.getParameter("password");
        String password1 = req.getParameter("password1");
        if (password.equals(password1)){
            resp.getWriter().print("repeat");
        }
        else {
            resp.getWriter().print("");
        }
    }
    public void checkLoginUsername(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String username = req.getParameter("username");


        if (username==null){
            resp.getWriter().print("null");
        }
        else {
            resp.getWriter().print("");
        }
    }
    public void checkLoginPassword(HttpServletRequest req,HttpServletResponse resp) throws IOException {
        String password = req.getParameter("password");
        String username = req.getParameter("username");
        if (password==null){
            resp.getWriter().print("null");
        }
        else {
            resp.getWriter().print("");
        }
    }
}
