package com.osk.team.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.osk.team.domain.Member;
import com.osk.team.domain.Qna;
import com.osk.team.service.QnaService;

@SuppressWarnings("serial")
@WebServlet("/qna/detail")
public class QnaDetailHandler extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    QnaService qnaService = (QnaService) request.getServletContext().getAttribute("qnaService");

    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out = response.getWriter();

    int no = Integer.parseInt(request.getParameter("no"));

    out.println("<!DOCTYPE html>");
    out.println("<html>");
    out.println("<head>");
    out.println("<title>QnA 상세</title>");
    out.println("</head>");
    out.println("<body>");
    out.println("<h1>QnA 게시글 상세보기</h1>");

    try {
      Qna q = qnaService.get(no);
      if (q == null) {
        out.println("<p>해당 번호의 게시글이 없습니다.</p>");
        return;
      }
      out.println("<form action='update' method='post'>");
      out.println("<table border='1'>");
      out.println("<tbody>");
      out.printf("<tr><th>번호</th>"
          + " <td><input type='text' name='no' value='%d' readonly></td></tr>\n", q.getNo());
      out.printf("<tr><th>제목</th>"
          + " <td><input name='title' type='text' value='%s'></td></tr>\n", q.getTitle());
      out.printf("<tr><th>내용</th>"
          + " <td><textarea name='content' rows='10' cols='60'>%s</textarea></td></tr>\n", q.getContent());
      out.printf("<tr><th>작성자</th> <td>%s</td></tr>\n", q.getWriter().getName());
      out.printf("<tr><th>등록일</th> <td>%s</td></tr>\n", q.getRegisteredDate());

      if (q.getAnswer() != null) {
        out.printf("<tr><th>답변내용</th> <td>%s</td></tr>\n", q.getAnswer());
        out.printf("<tr><th>답변일</th> <td>%s</td></tr>\n", q.getAnswerDate());
        return;
      }

      out.println("</tbody>");

      Member loginUser = (Member) request.getSession().getAttribute("loginUser");
      if (loginUser != null && q.getWriter().getNo() == loginUser.getNo()) {
        out.println("<tfoot>");
        out.println("<tr><td colspan='2'>");
        out.println("<input type='submit' value='변경'> "
            + "<a href='delete?no=" + q.getNo() + "'>삭제</a> ");
        out.println("</td></tr>");
        out.println("</tfoot>");
      }

      out.println("</table>");
      out.println("</form>");

    } catch (Exception e) {
      StringWriter strWriter = new StringWriter();
      PrintWriter printWriter = new PrintWriter(strWriter);
      e.printStackTrace(printWriter);
      out.printf("<pre>%s</pre>\n", strWriter.toString());
    }

    out.println("<p><a href='list'>목록</a></p>");


    out.println("</body>");
    out.println("</html>");
  }
}






