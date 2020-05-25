package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/FindPswServlet")
public class FindPswServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取各种参数
        String adId = req.getParameter("adId");
        String adPsw = req.getParameter("adPsw");
        String adPsw1 = req.getParameter("adPsw1");

        //开始重置密码操作
        //先判断两次密码是否一样
        if (adPsw.equals(adPsw1)){
            String sql = "update admin set adPsw = ? where adId = ?";
            Object[] objects = {adPsw, adId};
            int num = AdminDao.executeUpdate(sql, objects);
            if (num > 0){
                resp.getWriter().write("<script>alert('修改密码成功！请重新登录！'); window.location='" + req.getContextPath() + "/view/admin/login1.jsp';" +  "window.close();</script>");
            }else {
                resp.getWriter().write("<script>alert('修改密码失败！请重新修改！'); window.location='" + req.getContextPath() + "/view/admin/findpsw1.jsp';" +  "window.close();</script>");
            }
        }else {
            resp.getWriter().write("<script>alert('两次密码不一致！请重新输入密码！'); window.location='" + req.getContextPath() + "/view/admin/findpsw1.jsp';" +  "window.close();</script>");
        }



    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
