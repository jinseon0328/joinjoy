package com.osk.team.web;

import java.util.List;
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


}




