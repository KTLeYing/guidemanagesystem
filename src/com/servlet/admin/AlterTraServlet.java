package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AlterTraServlet")
public class AlterTraServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取请求参数
        String gid = req.getParameter("gid");
        String vid = req.getParameter("vid");
        String visitTime = req.getParameter("visitTime");
        String visitLength = req.getParameter("visitLength");
        String visitNum = req.getParameter("visitNum");
        String hotel = req.getParameter("hotel");
        String startPoint = req.getParameter("startPoint");
        String destination = req.getParameter("destination");
        String transportation = req.getParameter("transportation");

        int visitNum1 = Integer.parseInt(visitNum);

        String sql = "update travel set visitTime = ?, visitLength = ?, visitNum = ?, hotel = ?, startPoint = ?, destination = ?, transportation = ? where gid = ? and vid = ?";
        Object[] objects = {visitTime, visitLength, visitNum1, hotel, startPoint, destination, transportation, gid, vid};
        int num = AdminDao.executeUpdate(sql, objects);
        if (num > 0){
            req.getRequestDispatcher("/TraListByPageServlet?curPage=1&rows=8").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
