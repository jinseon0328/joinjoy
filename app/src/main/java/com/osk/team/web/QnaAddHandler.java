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
@WebServlet("/qna/add")
public class QnaAddHandler extends HttpServlet {


  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {


    response.setContentType("text/html;charset=UTF-8");
    request.getRequestDispatcher("/jsp/qna/form.jsp").include(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    QnaService qnaService = (QnaService) request.getServletContext().getAttribute("qnaService");

    Qna q = new Qna();

    q.setTitle(request.getParameter("title"));
    q.setContent(request.getParameter("content"));

    // 작성자는 로그인 사용자이다.
    HttpServletRequest httpRequest = request;
    Member loginUser = (Member) httpRequest.getSession().getAttribute("loginUser");
    q.setWriter(loginUser);

    try {
      qnaService.add(q);
      response.sendRedirect("list");
    } catch (Exception e) {
      throw new ServletException(e);
    }
  }
}



