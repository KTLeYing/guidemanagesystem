package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AlterGuiServlet")
public class AlterGuiServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取参数
        String gid = req.getParameter("gid");
        String gname = req.getParameter("gname");
        String sex = req.getParameter("sex");
        String age = req.getParameter("age");
        String salary = req.getParameter("salary");
        String workYears = req.getParameter("workYears");
        String phoneNum = req.getParameter("phoneNum");
        String psw = req.getParameter("psw");

        String sql = "update guide set gname = ?, sex = ?, age = ?, salary = ?, workYears = ?, phoneNum = ?, psw = ? where gid = ?";
        Object[] objects = {gname, sex, age, salary, workYears, phoneNum, psw, gid};
        int num = AdminDao.executeUpdate(sql, objects);
        if (num > 0){
            req.getRequestDispatcher("/GuiListByPageServlet?curPage=1&rows=8").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
