package com.osk;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


// https://www.journaldev.com/2532/javamail-example-send-mail-in-java-smtp
// https://offbyone.tistory.com/367
public class MailTest {

  public static void main(String[] args) {
    System.out.println("SimpleEmail Start");

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
<<<<<<< HEAD
        return new PasswordAuthentication("보낼 메일 주소", "");
=======
        return new PasswordAuthentication("cc-_-@naver.com", "qlxmzoavm123");
>>>>>>> 376c87cad1baad46699ac45b7ccd51166aab9cf0
      }
    });
    System.out.println("Session 생성");

<<<<<<< HEAD
    sendEmail(session, "받을 메일 주소",
=======
    sendEmail(session, "wishofsun@daum.net",
>>>>>>> 376c87cad1baad46699ac45b7ccd51166aab9cf0
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

<<<<<<< HEAD
      msg.setFrom(new InternetAddress("보낼 메일 주소", "JoinJoy"));

      //msg.setReplyTo(InternetAddress.parse("보낼 메일 주소", false));
=======
      msg.setFrom(new InternetAddress("cc-_-@naver.com", "JoinJoy"));

      //msg.setReplyTo(InternetAddress.parse("cc-_-@naver.com", false));
>>>>>>> 376c87cad1baad46699ac45b7ccd51166aab9cf0

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