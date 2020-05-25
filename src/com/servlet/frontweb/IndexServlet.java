package com.servlet.frontweb;

import com.dao.FrontWebDao;
import com.entity.News;

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

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //查询景区资讯
        String sql = "select * from news where type = ? order by nid desc limit 8";
        Object[] objects1 = {"景区"};
        ResultSet resultSet1 = FrontWebDao.qureyInfo(sql, objects1);
        List<News> newsList1 = new ArrayList<News>();
        try {
            while (resultSet1.next()){
                News news1 = new News();
                news1.setTitle(resultSet1.getString("title"));
                news1.setUrl(resultSet1.getString("url"));
                newsList1.add(news1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("newsList1", newsList1);

        //查询酒店资讯
        sql = "select * from news where type = ? order by nid desc limit 8";
        Object[] objects2 = {"酒店"};
        ResultSet resultSet2 = FrontWebDao.qureyInfo(sql, objects2);
        List<News> newsList2 = new ArrayList<News>();
        try {
            while (resultSet2.next()){
                News news2 = new News();
                news2.setTitle(resultSet2.getString("title"));
                news2.setUrl(resultSet2.getString("url"));
                newsList2.add(news2);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("newsList2", newsList2);

        //查询交通资讯
        sql = "select * from news where type = ? order by nid desc limit 8";
        Object[] objects3 = {"交通"};
        ResultSet resultSet3 = FrontWebDao.qureyInfo(sql, objects3);
        List<News> newsList3 = new ArrayList<News>();
        try {
            while (resultSet3.next()){
                News news3 = new News();
                news3.setTitle(resultSet3.getString("title"));
                news3.setUrl(resultSet3.getString("url"));
                newsList3.add(news3);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("newsList3", newsList3);

        //查询旅行资讯
        sql = "select * from news where type = ? order by nid desc limit 8";
        Object[] objects4 = {"旅行"};
        ResultSet resultSet4 = FrontWebDao.qureyInfo(sql, objects4);
        List<News> newsList4 = new ArrayList<News>();
        try {
            while (resultSet4.next()){
                News news4 = new News();
                news4.setTitle(resultSet4.getString("title"));
                news4.setUrl(resultSet4.getString("url"));
                newsList4.add(news4);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("newsList4", newsList4);

        req.getRequestDispatcher("/view/frontweb/index.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
