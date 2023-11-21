package csu.web.mypetstore.web.servlet;

import csu.web.mypetstore.domain.Account;
import csu.web.mypetstore.service.EmailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "send_code", urlPatterns ={ "/send_code"})
public class send_code extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account account = new Account();


        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repeatedPassword = request.getParameter("repeatedPassword");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        account.setEmail(email);
        account.setUsername(username);
        account.setPassword(password);
        account.setFirstName(firstName);
        account.setLastName(lastName);
        account.setRepeatedPassword(repeatedPassword);
        request.getSession().setAttribute("account", account);
        System.out.println(email);
        if(email!=null&&email!=""){
        // 生成验证码（这里简化为随机六位数字）
        String verificationCode = String.valueOf((int) ((Math.random() * 9 + 1) * 100000));

        // 实例化EmailService，替换为你的邮件服务器信息
        EmailService emailService = new EmailService("smtp.163.com", "13316687353@163.com", "WVSCCBCYGTLLJKQZ");

        // 发送验证码邮件
        String subject = "注册验证码";
        String message = "您的注册验证码是：" + verificationCode;

        if (emailService.sendEmail(email, subject, message)) {
            // 将验证码存储在session中，以便后续验证
            request.getSession().setAttribute("verificationCode", verificationCode);
            request.getSession().setAttribute("messageAccount", "please enter your verificationCode");
        }

        }
        else {
            request.getSession().setAttribute("messageAccount", "please enter your email");
        }
//          request.getRequestDispatcher("/WEB-INF/jsp/account/register.jsp").forward(request, response);
        request.getRequestDispatcher("/WEB-INF/jsp/account/newaccount.jsp").forward(request, response);

    }
}
