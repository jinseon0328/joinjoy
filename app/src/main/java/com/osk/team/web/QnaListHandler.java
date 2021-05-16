package com.osk.team.web;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.osk.team.domain.Qna;
import com.osk.team.service.QnaService;

@SuppressWarnings("serial")
@WebServlet("/qna/list")
public class QnaListHandler extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    QnaService qnaService = (QnaService) request.getServletContext().getAttribute("qnaService");

    try {
      List<Qna> qnas = qnaService.listAll();

      request.setAttribute("list", qnas);

      response.setContentType("text/html;charset=UTF-8");
      request.getRequestDispatcher("/jsp/qna/list.jsp").include(request, response);

    }  catch (Exception e) {
      throw new ServletException(e);
    }
  }
}