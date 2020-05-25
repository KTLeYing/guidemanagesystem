package com.servlet.guide;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/GuiAlterPswServlet")
public class GuiAlterPswServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取会话gid
        HttpSession session = req.getSession();
        String gid = (String) session.getAttribute("gid");
        System.out.println(gid);

        //获取请求参数
        String psw = req.getParameter("psw");
        String psw1 = req.getParameter("psw1");
        System.out.println(psw);
        System.out.println(psw1);

        if (psw.equals(psw1)){
            String sql = "update guide set psw = ? where gid = ?";
            Object[] objects = {psw, gid};
            int num = AdminDao.executeUpdate(sql, objects);
            if (num > 0){
                resp.getWriter().write("<script>alert('恭喜您！修改密码成功！'); window.location='" + req.getContextPath() + "/GuiInfoServlet';" +  "window.close();</script>");
            }else {
                req.setAttribute("message", "修改密码失败！请重新修改！");
                req.getRequestDispatcher("/view/guide/guialterpsw.jsp").forward(req, resp);
            }
        }else {
            req.setAttribute("message", "输入两次密码不一样！请重新输入！");
            req.getRequestDispatcher("/view/guide/guialterpsw.jsp").forward(req, resp);
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
