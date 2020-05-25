package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取参数
        String adId = req.getParameter("adId");
        String adPsw = req.getParameter("adPsw");

        //处理登录
        String sql = "select * from admin where adId = ? and adPsw = ?";
        Object[] object = {adId, adPsw};
        ResultSet resultSet = AdminDao.login(sql, object);

        try {
            if (resultSet.next()){
                String title = "登录成功！";
                String info = "用户名和密码正确！";
                String direction = "后台页面";
                String httpUrl = "/view/admin/mainview.jsp";
                String adName = resultSet.getString("adName");

                req.setAttribute("title", title);
                req.setAttribute("info", info);
                req.setAttribute("direction", direction);
                req.setAttribute("httpUrl", httpUrl);

                //设置会话
                HttpSession session = req.getSession();
                session.setAttribute("adName", adName);
                session.setAttribute("adId", adId);
            }else {
                String title = "登录失败！";
                String info = "用户名或密码错误！";
                String direction = "登录页面";
                String httpUrl = "/view/admin/login1.jsp";

                req.setAttribute("title", title);
                req.setAttribute("info", info);
                req.setAttribute("direction", direction);
                req.setAttribute("httpUrl", httpUrl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        req.getRequestDispatcher("/view/others/info.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
