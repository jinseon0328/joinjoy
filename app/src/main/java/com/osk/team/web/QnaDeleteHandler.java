package com.osk.team.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.osk.team.domain.Member;
import com.osk.team.domain.Qna;
import com.osk.team.service.QnaService;

@SuppressWarnings("serial")
@WebServlet("/qna/delete")
public class QnaDeleteHandler extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    QnaService qnaService = (QnaService) request.getServletContext().getAttribute("qnaService");

    try {
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

      response.sendRedirect("list");

    } catch (Exception e) {
      throw new ServletException(e);
    }
  }
}