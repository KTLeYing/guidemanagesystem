package com.servlet.admin;

import com.dao.AdminDao;
import com.entity.Guide;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Result;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/GuiListServlet")
public class GuiListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String sql = "select * from guide";
        Object[] objects = {};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        List<Guide> guideList = new ArrayList<Guide>();
        try {
            while (resultSet.next()){
                Guide guide = new Guide();
                guide.setGid(resultSet.getString("gid"));
                guide.setGname(resultSet.getString("gname"));
                guide.setSex(resultSet.getString("sex"));
                guide.setAge(resultSet.getInt("age"));
                guide.setSalary(resultSet.getDouble("salary"));
                guide.setWorkYears(resultSet.getString("workYears"));
                guide.setPhoneNum(resultSet.getString("phoneNum"));
                guide.setPsw(resultSet.getString("psw"));
                guideList.add(guide);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println(guideList);

        req.setAttribute("guideList", guideList);

        req.getRequestDispatcher("/view/admin/guilist.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
