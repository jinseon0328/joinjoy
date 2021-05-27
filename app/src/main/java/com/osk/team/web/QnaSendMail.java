package com.osk.team.web;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class QnaSendMail {
  // 1. 계정 정보를 입력하고 encoding 설정을 합니다.
  private final String user = "desire_yo@naver.com";   // Sender Email
  private final String password = "bitcamp1111";       // Sender Password
  private final String ENC_TYPE = "EUC-KR";           // Content Encoding

  private Properties prop;    // SMTP Setting information

  public QnaSendMail() {
    this.prop = getProperties();
  }

  // 2. 아까 확인했던 SMTP 정보를 기입합니다.
  private Properties getProperties() {
    Properties prop = new Properties();
    prop.put("mail.smtp.host", "smtp.naver.com");
    prop.put("mail.smtp.port", 587);
    prop.put("mail.smtp.auth", "true");

    return prop;
  }

  // 3. SMTP정보를 기반으로 인증을 받아 Session을 생성합니다.
  private Session getSession() {
    return  Session.getDefaultInstance(prop, new Authenticator() {
      @Override
      protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(user, password);
      }
    });
  }

  // 4. Mail을 전송하는 부분입니다.
  public void send(String pdfPath) {
    try {
      Session session = getSession();
      MimeMessage message = new MimeMessage(session);
      message.setFrom(new InternetAddress(user));
      // Receiver mail
      message.addRecipient(Message.RecipientType.TO, new InternetAddress("wishofsun@daum.net"));
      // Suject
      message.setSubject("test입니다");
      // Text
      MimeBodyPart content = new MimeBodyPart();
      content.setText("test내용입니다.");

      // Write contents(Text & File)
      Multipart mp = new MimeMultipart();
      mp.addBodyPart(content);
      message.setContent(mp);

      // Send the message
      Transport.send(message);
      System.out.println("전송 완료!");
    } catch (Exception e) {
      System.out.println("전송 실패!");
      e.printStackTrace();
    }
  }
}