package com.osk.team.web;

import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.osk.team.service.MemberService;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;


@SuppressWarnings("serial")
@WebServlet("/mail")
public class QnaSendMailHandler extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    // 메일 관련 정보
    String host = "smtp.naver.com";
    final String username = "desire_yo";
    final String password = "bitcamp1111";
    int port=465;

    // 메일 내용
    String recipient = "wishofsun@daum.net";
    String subject = "네이버를 사용한 발송 테스트입니다.";
    String body = "내용 무";

    MemberService qnaService = (MemberService) request.getServletContext().getAttribute("qnaService");


    // 먼저 아이디로 회원정보를 받아오고 가져온 데이터에서 email값을 비교하여 존재하지 않으면 인증메일 보내지 못함
    /*
     * Member m = new MemberService().memberLogin(memberId); if(m==null ||
     * !m.getEmail().equals(email)) { req.setAttribute("msg",
     * "아이디나 이메일 정보가 맞지 않습니다"); req.setAttribute("loc", "/member/searchPw");
     * req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp); return;
     * }
     */
    // mail server 설정
    String host = "smtp.naver.com";
    String user = "desire_yo@naver.com"; // 자신의 네이버 계정
    String password = "";// 자신의 네이버 패스워드

    // 메일 받을 주소
    String to_email = m.getEmail();
    String to_email = "dhsdb1541@naver.com";

    // SMTP 서버 정보를 설정한다.
    Properties props = new Properties();
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.port", 465);
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.ssl.enable", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.debug", "true");

    // 인증 번호 생성기
    StringBuffer temp = new StringBuffer();
    Random rnd = new Random();
    for (int i = 0; i < 10; i++) {
      int rIndex = rnd.nextInt(3);
      switch (rIndex) {
        case 0:
          // a-z
          temp.append((char) ((rnd.nextInt(26)) + 97));
          break;
        case 1:
          // A-Z
          temp.append((char) ((rnd.nextInt(26)) + 65));
          break;
        case 2:
          // 0-9
          temp.append((rnd.nextInt(10)));
          break;
      }
    }
    String AuthenticationKey = temp.toString();
    System.out.println(AuthenticationKey);

    Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
      @Override
      protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(user, password);
      }
    });

    // email 전송
    try {
      MimeMessage msg = new MimeMessage(session);
      msg.setFrom(new InternetAddress(user, "KH"));
      msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));

      // 메일 제목
      msg.setSubject("안녕하세요  인증 메일입니다.");
      // 메일 내용
      msg.setText("인증 번호는 :" + temp);

      Transport.send(msg);
      System.out.println("이메일 전송");

    } catch (Exception e) {
      e.printStackTrace();// TODO: handle exception
    }
    HttpSession saveKey = request.getSession();
    saveKey.setAttribute("AuthenticationKey", AuthenticationKey);
    // 패스워드 바꿀때 뭘 바꿀지 조건에 들어가는 id
    /*
     * req.setAttribute("id", memberId);
     * req.getRequestDispatcher("/views/login_myPage/searchPasswordEnd.jsp").forward
     * (req, resp);
     */
  }
  Properties props = System.getProperties();


  props.put("mail.smtp.host", host);
  props.put("mail.smtp.port", port);
  props.put("mail.smtp.auth", "true");
  props.put("mail.smtp.ssl.enable", "true");
  props.put("mail.smtp.ssl.trust", host);

  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
    String un=username;
    String pw=password;
    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
      return new PasswordAuthentication(un, pw);
    }
  });
  session.setDebug(true); //for debug

  Message mimeMessage = new MimeMessage(session);
  mimeMessage.setFrom(new InternetAddress("smtp.naver.com"));
  mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
  mimeMessage.setSubject(subject);
  mimeMessage.setText(body);
  Transport.send(mimeMessage);
}
}