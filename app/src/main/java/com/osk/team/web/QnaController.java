package com.osk.team.web;

import java.util.Date;
import java.util.List;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.osk.team.domain.Member;
import com.osk.team.domain.Qna;
import com.osk.team.service.QnaService;

@Controller
@RequestMapping("/qna/")
public class QnaController {

  QnaService qnaService;

  public QnaController(QnaService qnaService) {
    this.qnaService = qnaService;
  }

  @RequestMapping("add")
  public String add(HttpServletRequest request, HttpServletResponse response)
      throws Exception {

    if (request.getMethod().equals("GET")) {
      return "/jsp/qna/form.jsp";
    }

    Qna q = new Qna();

    q.setTitle(request.getParameter("title"));
    q.setContent(request.getParameter("content"));

    // 작성자는 로그인 사용자이다.
    HttpServletRequest httpRequest = request;
    Member loginUser = (Member) httpRequest.getSession().getAttribute("loginUser");
    q.setWriter(loginUser);

    qnaService.add(q);
    return "redirect:list";
  }

  @RequestMapping("delete")
  public String delete(HttpServletRequest request, HttpServletResponse response)
      throws Exception {

    int no = Integer.parseInt(request.getParameter("no"));

    Qna oldQna = qnaService.get(no);
    if (oldQna == null) {
      throw new Exception("해당 번호의 게시글이 없습니다.");
    }

    Member loginUser = (Member) request.getSession().getAttribute("loginUser");
    if (oldQna.getWriter().getNo() != loginUser.getNo()) {
      throw new Exception("삭제 권한이 없습니다!");
    }

    qnaService.delete(no);

    return "redirect:list";
  }

  @RequestMapping("detail")
  public String detail(HttpServletRequest request, HttpServletResponse response)
      throws Exception {

    int no = Integer.parseInt(request.getParameter("no"));
    System.out.println(no);

    Qna qna = qnaService.get(no);
    request.setAttribute("qna", qna);
    return "/jsp/qna/detail.jsp";
  }

  @RequestMapping("list")
  public String list(HttpServletRequest request, HttpServletResponse response)
      throws Exception {

    String myContent = request.getParameter("keyword");
    List<Qna> qnas = null;
    if (myContent != null) {
      qnas = qnaService.search(myContent);
    } else {
      qnas = qnaService.listAll();
    }

    request.setAttribute("list", qnas);

    return "/jsp/qna/list.jsp";
  }

  @RequestMapping("update")
  public String update(HttpServletRequest request, HttpServletResponse response)
      throws Exception {

    QnaService qnaService = (QnaService) request.getServletContext().getAttribute("qnaService");

    int no = Integer.parseInt(request.getParameter("no"));

    Qna oldQna = qnaService.get(no);
    if (oldQna == null) {
      throw new Exception("해당 번호의 QnA가 없습니다.");
    }
    Member loginUser = (Member) request.getSession().getAttribute("loginUser");
    if (loginUser.getPower() == 0 && oldQna.getWriter().getNo() != loginUser.getNo()) {
      throw new Exception("변경 권한이 없습니다!");
    }

    Qna qna = new Qna();
    qna.setNo(oldQna.getNo());
    qna.setTitle(request.getParameter("title"));
    qna.setContent(request.getParameter("content"));
    qna.setAnswer(request.getParameter("answer"));
    qnaService.update(qna);

    return "redirect:list";
  }

  @RequestMapping("send")
  public String send(HttpServletRequest request, HttpServletResponse response)
      throws Exception {

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
        return new PasswordAuthentication("이메일", "비밀번호");
      }
    });
    System.out.println("Session 생성");
    System.out.println(request.getParameter("email"));

    sendEmail(session, request.getParameter("email"),
        "[JoinJoy] 고객님의 문의사항에 대해 답변 드립니다. ",
        request.getParameter("content") + "\n" + request.getParameter("answer"));

    return "redirect:list";
  }

  public static void sendEmail(Session session, String toEmail, String subject, String body){
    try {
      MimeMessage msg = new MimeMessage(session);
      //set message headers
      msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
      msg.addHeader("format", "flowed");
      msg.addHeader("Content-Transfer-Encoding", "8bit");

      msg.setFrom(new InternetAddress("이메일", "JoinJoy"));

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





