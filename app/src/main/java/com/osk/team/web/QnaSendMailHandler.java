package com.osk.team.web;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.osk.team.domain.Member;
import com.osk.team.service.QnaService;


// https://www.journaldev.com/2532/javamail-example-send-mail-in-java-smtp
// https://offbyone.tistory.com/367
@SuppressWarnings("serial")
@WebServlet("/qna/send")
public class QnaSendMailHandler extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    QnaService qnaService = (QnaService) request.getServletContext().getAttribute("qnaService");

    HttpServletRequest httpRequest = request;
    Member loginUser = (Member) httpRequest.getSession().getAttribute("loginUser");

    System.out.println("이메일 발송 시작");

    Properties props = System.getProperties();
    props.put("mail.smtp.host", "smtp.naver.com");
    props.put("mail.smtp.socketFactory.port", "465"); //SSL Port
    props.put("mail.smtp.socketFactory.class",
        "javax.net.ssl.SSLSocketFactory"); //SSL Factory Class
    props.put("mail.smtp.auth", "true"); //Enabling SMTP Authentication
    props.put("mail.smtp.port", "465"); //SMTP Port


    Session session = Session.getDefaultInstance(props, new Authenticator() {
      @Override
      protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("@naver.com", "");
      }
    });
    System.out.println("Session 생성");

    sendEmail(session, "loginUser",

        "[JoinJoy] 고객님의 문의사항에 대해 답변 드립니다. ", 
        "문의하신 게시물에 답변이 등록되었습니다.");
  }
  /**
   * Utility method to send simple HTML email
   * @param session
   * @param toEmail
   * @param subject
   * @param body
   */
  public static void sendEmail(Session session, String toEmail, String subject, String body){
    try {
      MimeMessage msg = new MimeMessage(session);
      //set message headers
      msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
      msg.addHeader("format", "flowed");
      msg.addHeader("Content-Transfer-Encoding", "8bit");

      msg.setFrom(new InternetAddress("@naver.com", "JoinJoy"));

      //msg.setReplyTo(InternetAddress.parse("cc-_-@naver.com", false));

      msg.setSubject(subject, "UTF-8");

      msg.setText(body, "UTF-8");

      msg.setSentDate(new Date());

      msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
      System.out.println("이메일 발송 준비");
      Transport.send(msg);  

      System.out.println("이메일 발송 성공!!");
    }
    catch (Exception e) {
      e.printStackTrace();
    }
  }
}