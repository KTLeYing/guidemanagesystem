package com.servlet.admin;

import com.dao.AdminDao;
import com.entity.Guide;
import com.entity.View;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/FindViewByIdServlet")
public class FindViewByIdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String vid = req.getParameter("vid");

        String sql = "select * from viewspot where vid = ?";
        Object[] objects = {vid};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        try {
            if (resultSet.next()){
                View view = new View();
                view.setVid(resultSet.getString("vid"));
                view.setVname(resultSet.getString("vname"));
                view.setRanking(resultSet.getString("ranking"));
                view.setType(resultSet.getString("type"));
                view.setPrice(resultSet.getString("price"));
                view.setGrade(resultSet.getDouble("grade"));
                view.setOpenTime(resultSet.getString("openTime"));
                view.setLocation(resultSet.getString("location"));
                req.setAttribute("view", view);

                req.getRequestDispatcher("/view/admin/alterview1.jsp").forward(req, resp);

            }else {
                req.getRequestDispatcher("/view/others/alterfailed.jsp").forward(req, resp);
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
