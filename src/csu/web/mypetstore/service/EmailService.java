package csu.web.mypetstore.service;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class EmailService {
    private final String host;
    private final String username;
    private final String password;

    public EmailService(String host, String username, String password) {
        this.host = host;
        this.username = username;
        this.password = password;
    }

        public boolean sendEmail(String toEmail, String subject, String message) {
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "25");

            Session session = Session.getInstance(props, new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });

            try {
                Message mailMessage = new MimeMessage(session);
                mailMessage.setFrom(new InternetAddress(username));
                mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
                mailMessage.setSubject(subject);
                mailMessage.setText(message);

                Transport.send(mailMessage);
                System.out.println("Email sent successfully");

                return true; // 邮件发送成功
            } catch (MessagingException e) {
                e.printStackTrace();
                return false; // 邮件发送失败//
                //
            }
    }
}

