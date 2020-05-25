package com.servlet.admin;

import com.dao.AdminDao;
import com.entity.Travel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/FindTraByIdServlet1")
public class FindTraByIdServlet1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取参数
        String gid = req.getParameter("gid");
        String vid = req.getParameter("vid");
        System.out.println(gid);
        System.out.println(vid);


        String sql = "select t.*,g.gname,v.vname from guide g, travel t, viewspot v where t.gid = ? and t.vid = ? and g.gid = t.gid and t.vid = v.vid";
        Object[] objects = {gid, vid};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        try {
            if (resultSet.next()){//找到目标记录
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

                req.getRequestDispatcher("/view/admin/altertra1.jsp").forward(req, resp);

            }else {//找不到目标记录
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
