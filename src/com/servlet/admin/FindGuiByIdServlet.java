package com.servlet.admin;

import com.dao.AdminDao;
import com.entity.Guide;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/FindGuiByIdServlet")
public class FindGuiByIdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String gid = req.getParameter("gid");

        String sql = "select * from guide where gid = ?";
        Object[] objects = {gid};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
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

                req.getRequestDispatcher("/view/admin/altergui1.jsp").forward(req, resp);
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
