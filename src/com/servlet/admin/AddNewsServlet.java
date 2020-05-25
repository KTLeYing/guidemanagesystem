package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/AddNewsServlet")
public class AddNewsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取参数
        String nid = req.getParameter("nid");
        String title = req.getParameter("title");
        String url = req.getParameter("url");
        String type = req.getParameter("type");

        int nid1 = Integer.parseInt(nid);

        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String pubTime = simpleDateFormat.format(date);
        System.out.println(pubTime);

        //看该新闻id号是否已经存在
        String sql = "select * from news where nid = ?";
        Object[] objects = {nid1};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);

        try {
            if (resultSet.next()){//存在此记录
                req.getRequestDispatcher("/view/others/addfailed.jsp").forward(req, resp);
            }else {//不存在此记录，可以添加
                sql = "insert into news values(?, ?, ?, ?, ?)";
                Object[] objects1 = {nid1, title, url, type, pubTime};
                int num = AdminDao.executeUpdate(sql, objects1);
                if (num > 0){//添加成功
                    resp.getWriter().write("<script>alert('恭喜您！添加新闻成功！'); window.location='" + req.getContextPath() + "/view/admin/addnews.jsp';" +  "window.close();</script>");
                }
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
