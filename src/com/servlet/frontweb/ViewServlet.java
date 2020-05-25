package com.servlet.frontweb;

import com.dao.FrontWebDao;
import com.entity.View;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String sql = "select * from viewspot order by grade desc limit 10";
        Object[] objects = {};
        ResultSet resultSet = FrontWebDao.qureyInfo(sql, objects);
        List<View> viewList = new ArrayList<View>();
        try {
            while (resultSet.next()){
                View view = new View();
                view.setVid(resultSet.getString("vid"));
                view.setVname(resultSet.getString("vname"));
                view.setRanking(resultSet.getString("ranking"));
                view.setType(resultSet.getString("type"));
                view.setPrice(resultSet.getString("price"));
                view.setGrade(resultSet.getDouble("grade"));
                view.setOpenTime(resultSet.getString("openTime"));
                view.setLocation(resultSet.getString("location"));
                viewList.add(view);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(viewList);

        req.setAttribute("viewList", viewList);

        req.getRequestDispatcher("/view/frontweb/view.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
