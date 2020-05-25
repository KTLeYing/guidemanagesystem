package com.servlet.guide;

import com.dao.AdminDao;
import com.dao.GuideDao;
import com.entity.Guide;
import com.entity.Travel;
import com.entity.View;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/GuiInfoServlet")
public class GuiInfoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取会话
        HttpSession session = req.getSession();
        String gid = (String) session.getAttribute("gid");

        //查询个人信息
        String sql = "select * from guide where gid = ?";
        Object[] objects = {gid};
        ResultSet resultSet = GuideDao.qureyInfo(sql, objects);
        try {
            if (resultSet.next()){
                Guide guide = new Guide();
                guide.setGid(resultSet.getString("gid"));
                guide.setGname(resultSet.getString("gname"));
                guide.setSex(resultSet.getString("sex"));
                guide.setAge(resultSet.getInt("age"));
                guide.setSalary(resultSet.getDouble("salary"));
                guide.setWorkYears(resultSet.getString("workYears"));
                guide.setPhoneNum(resultSet.getString("phoneNum"));
                guide.setPsw(resultSet.getString("psw"));
                req.setAttribute("guide", guide);

                System.out.println(guide);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        //查询负责的景点信息
        sql = "select v.* from guide g, travel t, viewspot v where g.gid = ? and g.gid = t.gid and t.vid = v.vid";
        ResultSet resultSet1 = AdminDao.qureyInfo(sql, objects);
        List<View> viewList = new ArrayList<View>();
        try {
            while (resultSet1.next()){
                View view = new View();
                view.setVid(resultSet1.getString("vid"));
                view.setVname(resultSet1.getString("vname"));
                view.setRanking(resultSet1.getString("ranking"));
                view.setType(resultSet1.getString("type"));
                view.setPrice(resultSet1.getString("price"));
                view.setGrade(resultSet1.getDouble("grade"));
                view.setOpenTime(resultSet1.getString("openTime"));
                view.setLocation(resultSet1.getString("location"));
                viewList.add(view);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        req.setAttribute("viewList", viewList);
        System.out.println(viewList);


        //查询负责的旅行信息
        sql = "select t.*, v.vname, g.gname from guide g, travel t, viewspot v  where g.gid = ? and g.gid = t.gid and t.vid = v.vid";
        ResultSet resultSet2 = AdminDao.qureyInfo(sql, objects);
        List<Travel> travelList = new ArrayList<Travel>();
        try {
            while (resultSet2.next()){
                Travel travel = new Travel();
                travel.setGid(resultSet2.getString("gid"));
                travel.setGname(resultSet2.getString("gname"));
                travel.setVid(resultSet2.getString("vid"));
                travel.setVname(resultSet2.getString("vname"));
                travel.setVisitTime(resultSet2.getDate("visitTime"));
                travel.setVisitLength(resultSet2.getString("visitLength"));
                travel.setVisitNum(resultSet2.getInt("visitNum"));
                travel.setHotel(resultSet2.getString("hotel"));
                travel.setStartPoint(resultSet2.getString("startPoint"));
                travel.setDestination(resultSet2.getString("destination"));
                travel.setTransportation(resultSet2.getString("transportation"));
                travelList.add(travel);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        req.setAttribute("travelList", travelList);
        System.out.println(travelList);


        req.getRequestDispatcher("/view/frontweb/guiinfo.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
