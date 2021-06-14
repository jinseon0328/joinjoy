package com.osk.team.web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@WebFilter("/*")
public class LoginCheckFilter implements Filter {
  static Logger logger = LogManager.getLogger();

  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain nextChain)
      throws ServletException, IOException {

    HttpServletRequest httpRequest = (HttpServletRequest) request;

    logger.debug("{}{}", httpRequest.getServletPath(), httpRequest.getPathInfo());

    if (httpRequest.getServletPath().startsWith("/app")) {
      String pathInfo = httpRequest.getPathInfo();
      if (pathInfo.endsWith("/member/add")) {
        System.out.println("회원가입 경로");
      } else if (pathInfo.endsWith("add") ||
          pathInfo.endsWith("update") ||
          pathInfo.endsWith("detail") ||
          pathInfo.endsWith("delete")) {

        logger.debug("로그인 검사!");

        if (httpRequest.getSession().getAttribute("loginUser") == null) {
          logger.debug("로그인을 하지 않았음!");
          response.setContentType("text/plain;charset=UTF-8");
          response.getWriter().println("로그인 해야 합니다!");
          return;
        }
      }
    }
    nextChain.doFilter(request, response);
  }
}