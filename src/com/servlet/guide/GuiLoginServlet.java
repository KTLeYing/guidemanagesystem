package com.servlet.guide;

import com.dao.GuideDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.SecureRandom;
import java.sql.ResultSet;

@WebServlet("/GuiLoginServlet")
public class GuiLoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String gid = req.getParameter("gid");
        String psw = req.getParameter("psw");
        System.out.println(gid);
        System.out.println(psw);

        String sql = "select * from guide where gid = ? and psw =?";
        Object[] objects = {gid, psw};
        ResultSet resultSet = GuideDao.login(sql, objects);
        try {
            if (resultSet.next()){
                String gname = resultSet.getString("gname");
                req.getSession().setAttribute("gid", gid);
                req.getSession().setAttribute("gname", gname);
                req.getRequestDispatcher("/GuiInfoServlet").forward(req, resp);
            }else {
                req.setAttribute("message", "登录失败！ID号或密码错误!");
                req.getRequestDispatcher("/view/frontweb/guide.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
