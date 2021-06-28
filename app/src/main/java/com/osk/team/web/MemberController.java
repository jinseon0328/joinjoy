package com.osk.team.web;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.osk.team.domain.Member;
import com.osk.team.service.MemberService;
import net.coobird.thumbnailator.ThumbnailParameter;
import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
import net.coobird.thumbnailator.name.Rename;

@Controller
@RequestMapping("/member/")
public class MemberController {

  MemberService memberService;

  public MemberController(MemberService memberService) {
    this.memberService = memberService;
  }

  SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

  @RequestMapping("add")
  public String add(HttpServletRequest request, HttpServletResponse response) throws Exception {
    String uploadDir = request.getServletContext().getRealPath("/upload");

    if (request.getMethod().equals("GET")) {
      return "/jsp/member/form3.jsp";
    }
    Member m = new Member();
    //m.setNo(Integer.parseInt(request.getParameter("no")));
    m.setName(request.getParameter("name"));
    m.setPassword(request.getParameter("password"));
    m.setEmail(request.getParameter("email"));
    m.setTel(Integer.parseInt(request.getParameter("tel")));
    m.setGender(Integer.parseInt(request.getParameter("gender")));
    m.setBirth(Date.valueOf(request.getParameter("birth")));
    m.setStatus(0);
    m.setPower(0);
    m.setStatus(0);

    Part photoFile = request.getPart("photo");
    if (photoFile.getSize() > 0) {
      String filename = UUID.randomUUID().toString();
      photoFile.write(uploadDir + "/" + filename);
      m.setPhoto(filename);

      // 썸네일 이미지 생성
      Thumbnails.of(uploadDir + "/" + filename)
      .size(30, 30)
      .outputFormat("jpg")
      .crop(Positions.CENTER)
      .toFiles(new Rename() {
        @Override
        public String apply(String name, ThumbnailParameter param) {
          return name + "_30x30";
        }
      });

      Thumbnails.of(uploadDir + "/" + filename)
      .size(80, 80)
      .outputFormat("jpg")
      .crop(Positions.CENTER)
      .toFiles(new Rename() {
        @Override
        public String apply(String name, ThumbnailParameter param) {
          return name + "_80x80";
        }
      });
    }

    memberService.add(m);
    return "/jsp/club/main.jsp";
  }

  @RequestMapping("delete")
  public String delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
    int no = Integer.parseInt(request.getParameter("no"));

    Member member = memberService.get(no);
    if (member == null) {
      throw new Exception("해당 번호의 회원이 없습니다.");
    }

    Member loginUser = (Member) request.getSession().getAttribute("loginUser");
    if (member.getNo() != loginUser.getNo()) {
      throw new Exception("삭제 권한이 없습니다!");
    }

    memberService.delete(no);
    return "redirect:list";
  }

  @RequestMapping("detail")
  public String detail(HttpServletRequest request, HttpServletResponse response) throws Exception {
    int no = Integer.parseInt(request.getParameter("no"));

    Member m = memberService.get(no);
    request.setAttribute("member", m);

    return "/jsp/member/detail.jsp";
  }

  @RequestMapping("list")
  public String list(HttpServletRequest request, HttpServletResponse response) throws Exception {
    List<Member> list = memberService.list(request.getParameter("keyword"));
    request.setAttribute("list", list);
    return "/jsp/member/list.jsp";

  }

  @RequestMapping("update")
  public String update(HttpServletRequest request, HttpServletResponse response) throws Exception {

    String uploadDir = request.getServletContext().getRealPath("/upload");
    int no = Integer.parseInt(request.getParameter("no"));

    Member oldMember = memberService.get(no);
    if (oldMember == null) {
      throw new Exception("해당 번호의 회원이 없습니다.");
    }

    Member loginUser = (Member) request.getSession().getAttribute("loginUser");
    if (oldMember.getNo() != loginUser.getNo() && loginUser.getPower() == 0) {
      throw new Exception("변경 권한이 없습니다!");
    }

    Member member = new Member();
    member.setNo(oldMember.getNo());
    member.setPassword(request.getParameter("password"));
    member.setTel(Integer.parseInt(request.getParameter("tel")));

    Part photoPart = request.getPart("photo");
    if (photoPart.getSize() > 0) {
      String filename = UUID.randomUUID().toString();
      photoPart.write(uploadDir + "/" + filename);
      member.setPhoto(filename);

      Thumbnails.of(uploadDir + "/" + filename)
      .size(30, 30)
      .outputFormat("jpg")
      .crop(Positions.CENTER)
      .toFiles(new Rename() {
        @Override
        public String apply(String name, ThumbnailParameter param) {
          return name + "_30x30";
        }
      });

      Thumbnails.of(uploadDir + "/" + filename)
      .size(80, 80)
      .outputFormat("jpg")
      .crop(Positions.CENTER)
      .toFiles(new Rename() {
        @Override
        public String apply(String name, ThumbnailParameter param) {
          return name + "_80x80";
        }
      });
    }
    memberService.update(member);

    return "redirect:list";
  }
}