package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddViewServlet")
public class AddViewServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取请求参数
        String vid = req.getParameter("vid");
        String vname = req.getParameter("vname");
        String ranking = req.getParameter("ranking");
        String type = req.getParameter("type");
        String price = req.getParameter("price");
        String grade = req.getParameter("grade");
        String openTime = req.getParameter("openTime");
        String location = req.getParameter("location");

        Double grade1 = Double.valueOf(grade);

        String sql = "select count(*) as num from viewspot where vid = ?";
        Object[] objects = {vid};
        int num = AdminDao.findTotalCount(sql, objects);
        System.out.println(num);

        if (num == 0){//不存在记录
            sql = "insert into viewspot values(?, ?, ?, ?, ?, ?, ?, ?)";
            Object[] objects1 = {vid, vname, ranking, type, price, grade1, openTime, location};
            int num1 = AdminDao.executeUpdate(sql, objects1);
            if (num1 > 0){
                req.getRequestDispatcher("/ViewListByPageServlet?curPage=1&rows=8").forward(req, resp);
            }
        }else {//已存在记录
            req.getRequestDispatcher("/view/others/addfailed.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
