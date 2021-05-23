package com.osk.team.web;

import com.osk.team.domain.Club;
import com.osk.team.domain.Member;
import com.osk.team.service.ClubService;
import com.osk.team.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;

@SuppressWarnings("serial")
@WebServlet("/club/detail")
public class ClubDetailHandler extends HttpServlet {

    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ClubService clubService = (ClubService) request.getServletContext().getAttribute("clubService");
        MemberService memberService = (MemberService) request.getServletContext().getAttribute("memberService");

        try {
            int no = Integer.parseInt(request.getParameter("no"));

            Club c = clubService.get(no);
            if (c == null) {
                throw new Exception("해당 번호의 클럽이 없습니다.");
            }

            Member loginUser = (Member) request.getSession().getAttribute("loginUser");

//            if (c.getWriter().getNo() == loginUser.getNo()) {
//                System.out.println("방장은 이미 참여하였습니다.");
//                return;
//            }
            //에러 발생 확인 바람!
            //TODO Auto-generated method stub
            if (loginUser == null) {
                throw new Exception("로그인 후 이용가능합니다.");
            }

            System.out.println("사진 크기 확인" + c.getPhotos().size());
            request.setAttribute("club", c);
            request.setAttribute("clubMembers", c.getMembers());
            request.setAttribute("member", memberService.list(null));

            response.setContentType("text/html;charset=UTF-8");
            request.getRequestDispatcher("/jsp/club/detail.jsp").include(request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
