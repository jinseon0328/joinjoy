package com.osk.team.web;

import com.osk.team.domain.Club;
import com.osk.team.domain.Member;
import com.osk.team.domain.Photo;
import com.osk.team.service.ClubService;
import net.coobird.thumbnailator.ThumbnailParameter;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
import net.coobird.thumbnailator.name.Rename;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@SuppressWarnings("serial")
@WebServlet("/club/update")
public class ClubUpdateHandler extends HttpServlet {
    //수정 코너에서 현재 인원들 탈퇴 기능 넣기

    private String uploadDir;
    private List<Part> partList;//사진 리스트
    private List<Photo> photos;//사진 정보 리스트

    @Override
    public void init() throws ServletException {//사진 저장소
        this.uploadDir = this.getServletContext().getRealPath("/upload");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/jsp/club/form.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ClubService clubService = (ClubService) request.getServletContext().getAttribute("clubService");
        partList = new ArrayList<Part>();
        photos = new ArrayList<Photo>();

        try {
            int no = Integer.parseInt(request.getParameter("no"));

            System.out.println(no);

            Club oldClub = clubService.get(no);

            if (oldClub == null) {
                throw new Exception("해당 번호의 클럽이 없습니다.");
            }

            Member loginUser = (Member) request.getSession().getAttribute("loginUser");
            if (oldClub.getWriter().getNo() != loginUser.getNo()) {
                throw new Exception("변경 권한이 없습니다!");
            }

            // 사용자에게서 변경할 데이터를 입력 받는다.
            Club c = new Club();
            c.setTitle(request.getParameter("title"));
            c.setContent(request.getParameter("content"));

//            // ...&member=1&member=18&member=23
//            //클럽원 추가
//            if (c.getWriter().getNo() != loginUser.getNo()) {
//                String[] values = request.getParameterValues("members");
//                ArrayList<Member> memberList = new ArrayList<>();
//                if (values != null) {
//                    for (String value : values) {
//                        Member member = new Member();
//                        member.setNo(Integer.parseInt(value));
//                        memberList.add(member);
//                    }
//                }
//                c.setMembers(memberList);
//            }
            //클럽 참여 기능
            ArrayList<Member> joinMember = new ArrayList<>();
            for (int i = 0; i < c.getTotal(); i++) {
                //방장입장 불가 / 이미 참여한 멤버 입장 불가 / 로그인 안한 멤버 입장 불가
                if (c.getWriter().getNo() != loginUser.getNo() || c.getMembers().get(i).getNo() != loginUser.getNo() || loginUser == null) {
                    joinMember.add(loginUser);
                }
            }

            c.setMembers(joinMember);//멤버 참여


            if (request.getPart("photo1").getSize() > 0) {
                partList.add(request.getPart("photo1"));
            }
            if (request.getPart("photo2").getSize() > 0) {
                partList.add(request.getPart("photo2"));
            }
            if (request.getPart("photo3").getSize() > 0) {
                partList.add(request.getPart("photo3"));
            }

            for (int i = 0; i < partList.size(); i++) {
                if (partList.get(i).getSize() > 0) {
                    photos.add(new Photo());

                    String filename = UUID.randomUUID().toString();
                    partList.get(i).write(this.uploadDir + "/" + filename);
                    photos.get(i).setName(filename);

                    Thumbnails.of(this.uploadDir + "/" + filename)
                            .size(254, 178)
                            .outputFormat("jpg")
                            .crop(Positions.CENTER)
                            .toFiles(new Rename() {
                                @Override
                                public String apply(String name, ThumbnailParameter param) {
                                    return name + "_254x178";
                                }
                            });
                }
            }

            int p_cno = clubService.getClubCno().getNo();//같은 p_cno 번호 셋팅
            for (int i = 0; i < photos.size(); i++) {//반복문을 돌려서 갯수만큼 db에 저장
                photos.get(i).setNo(p_cno);//등록된 게시글의 cno값을 출력해서 넣어줌 사짐cno값 넣어줌
                clubService.addWithPhoto(photos.get(i));//클럽 사진 등록 /사진 cno값과 이름값 함께 insert 해준다
            }

            clubService.update(c);

            response.sendRedirect("list");

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
