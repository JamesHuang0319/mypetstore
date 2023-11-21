package csu.web.mypetstore.web.servlet;

import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.service.AccountService;
import csu.web.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class NewAccountServlet extends HttpServlet {
    private static final String MAIN = "/WEB-INF/jsp/catalog/main.jsp";
    private static final String NEWACCOUNTFORM = "/WEB-INF/jsp/account/newaccount.jsp";

    private Account account;
    private Account account1;
    private AccountService accountService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        account = (Account)session.getAttribute("loginAccount");
        account = null;
        session.setAttribute("loginAccount", account);
        String userVertificationCode = req.getParameter("verificationCode");

        String correctVerificationCode = (String) req.getSession().getAttribute("verificationCode");
        String repeatedPassword = req.getParameter("repeatedPassword");
        if (repeatedPassword.equals(req.getParameter("password"))) {
            Boolean isSame = false;
            /*对比两个值（字母不区分大小写）*/
            if(userVertificationCode.equals(correctVerificationCode)){
                isSame = true;
            }

            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String firstName = req.getParameter("firstName");
            String lastName = req.getParameter("lastName");
            String email = "yourname@yourdomain.com";
            String phone = req.getParameter("phone");
            String address1 = "901 San Antonio Road";
            String address2 = "MS UCUP02-206";
            String city = "Palo Alto";
            String state = "CA";
            String zip = "94303";
            String country = req.getParameter("country");
            String languagePreference = req.getParameter("languagePreference");
            String favouriteCategoryId = req.getParameter("favouriteCategoryId");
            String listOption = req.getParameter("listOption");
            String bannerOption = req.getParameter("bannerOption");

            account1 = new Account();
            account1.setUsername(username);
            account1.setPassword(password);
            account1.setFirstName(firstName);
            account1.setLastName(lastName);
            account1.setEmail(email);
            account1.setPhone(phone);
            account1.setAddress1(address1);
            account1.setAddress2(address2);
            account1.setCity(city);
            account1.setState(state);
            account1.setZip(zip);
            account1.setCountry(country);
            account1.setLanguagePreference(languagePreference);
            account1.setFavouriteCategoryId(favouriteCategoryId);
            account1.setListOption(Boolean.parseBoolean(listOption));
            account1.setBannerOption(Boolean.parseBoolean(bannerOption));



            if(isSame){
                accountService = new AccountService();
                accountService.insertAccount(account1);

                if(account1 != null){
                    HttpServletRequest httpRequest= req;
                    String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                            + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                    LogService logService = new LogService();
                    String logInfo = logService.logInfo(" ") + strBackUrl + " 注册新账号";
                    logService.insertLogInfo(account1.getUsername(), logInfo);
                }
                session.setAttribute("messageAccount","register success");
                req.getRequestDispatcher(MAIN).forward(req, resp);
            }else{
                session.setAttribute("messageAccount", "Invalid Verification Code.");

                if(account1 != null){
                    HttpServletRequest httpRequest= req;
                    String strBackUrl = "http://" + req.getServerName() + ":" + req.getServerPort()
                            + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                    LogService logService = new LogService();
                    String logInfo = logService.logInfo(" ") + strBackUrl + " 注册账号，验证码错误";
                    logService.insertLogInfo(account1.getUsername(), logInfo);
                }

                req.getRequestDispatcher(NEWACCOUNTFORM).forward(req, resp);
            }
        }else {
            session.setAttribute("messageAccount", "password is not same");
            req.getRequestDispatcher(NEWACCOUNTFORM).forward(req, resp);
        }
        req.getSession().removeAttribute("vertificationCode");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
