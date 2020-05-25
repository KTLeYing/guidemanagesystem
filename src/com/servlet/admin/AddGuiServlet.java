package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AddGuiServlet")
public class AddGuiServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取请求参数
        String gid = req.getParameter("gid");
        String gname = req.getParameter("gname");
        String sex = req.getParameter("sex");
        String age = req.getParameter("age");
        String salary = req.getParameter("salary");
        String workYears = req.getParameter("workYears");
        String phoneNum = req.getParameter("phoneNum");
        String psw = req.getParameter("psw");

        int age1 = Integer.parseInt(age);
        Double salary1 = Double.valueOf(salary);

        String sql = "select count(*) as num from guide where gid = ?";
        Object[] objects = {gid};
        int num = AdminDao.findTotalCount(sql, objects);
        System.out.println(num);

        if (num == 0){//不存在记录
            sql = "insert into guide values(?, ?, ?, ?, ?, ?, ?, ?)";
            Object[] objects1 = {gid, gname, sex, age1, salary1, workYears, phoneNum, psw};
            int num1 = AdminDao.executeUpdate(sql, objects1);
            if (num1 > 0){
                req.getRequestDispatcher("/GuiListByPageServlet?curPage=1&rows=8").forward(req, resp);
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
