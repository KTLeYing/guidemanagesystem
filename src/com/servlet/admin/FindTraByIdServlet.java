package com.servlet.admin;

import com.dao.AdminDao;
import com.entity.Guide;
import com.entity.Travel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/FindTraByIdServlet")
public class FindTraByIdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String id = req.getParameter("id");
        String[] id1 = id.split(",");//用,作为分界，把id划分为gid和vid
        String gid = id1[0];
        String vid = id1[1];
        System.out.println(gid);
        System.out.println(vid);


        String sql = "select t.*,g.gname,v.vname from guide g, travel t, viewspot v where t.gid = ? and t.vid = ? and g.gid = t.gid and t.vid = v.vid";
        Object[] objects = {gid, vid};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        try {
            resultSet.next();
            Travel travel = new Travel();
            travel.setGid(resultSet.getString("gid"));
            travel.setGname(resultSet.getString("gname"));
            travel.setVid(resultSet.getString("vid"));
            travel.setVname(resultSet.getString("vname"));
            travel.setVisitTime(resultSet.getDate("visitTime"));
            travel.setVisitLength(resultSet.getString("visitLength"));
            travel.setVisitNum(resultSet.getInt("visitNum"));
            travel.setHotel(resultSet.getString("hotel"));
            travel.setStartPoint(resultSet.getString("startPoint"));
            travel.setDestination(resultSet.getString("destination"));
            travel.setTransportation(resultSet.getString("transportation"));
            req.setAttribute("travel", travel);
        } catch (Exception e) {
            e.printStackTrace();
        }

        req.getRequestDispatcher("/view/admin/altertra1.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
