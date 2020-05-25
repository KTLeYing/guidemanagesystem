package com.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter("/view/frontweb/guiinfo.jsp")  //当要访问guiinfo.jsp页面时，要进行过滤拦截处理
public class GuiLoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //0.强制转换
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        //1.获取资源请求路径
        String uri = request.getRequestURI();
        //2.判断是否包含登录相关资源路径,要排除css/js/图片/验证码等资源
        //3.从获取session中获取user
         Object gname = request.getSession().getAttribute("gname");
        System.out.println(gname);
         if (gname != null){
             //登录了，放行
             filterChain.doFilter(servletRequest, servletResponse);
         }else {
             //没有登录,跳转到登录页面
             request.getRequestDispatcher("/view/frontweb/guide.jsp").forward(servletRequest, servletResponse);
         }
    }


    @Override
    public void destroy() {

    }
}
