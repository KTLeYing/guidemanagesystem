package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DelSelectedTraServlet")
public class DelSelectedTraServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取参数
        String[] ids = req.getParameterValues("id");
        System.out.println(ids);

        for (String id: ids) {
            String[] id1 = id.split(",");//用,作为分界，把id划分为gid和vid
            String gid = id1[0];
            String vid = id1[1];
            System.out.println(gid);
            System.out.println(vid);

            //判断该gid在travel中是否只有一条记录
            boolean flag1 = false;
            String sql = "select count(*) as num from travel where gid = ?";
            Object[] objects1 = {gid};
            int num1 = AdminDao.findTotalCount(sql, objects1);
            if (num1 == 1){//如只有一条，置为true，等下删除
                flag1 = true;
            }

            //判断该vid在travel中是否只有一条记录
            boolean flag2 = false;
            sql = "select count(*) as num from travel where vid = ?";
            Object[] objects2 = {vid};
            int num2 = AdminDao.findTotalCount(sql, objects2);
            if (num2 == 1){//如只有一条，置为true，等下删除
                flag2 = true;
            }

            //先删除travel
            sql = "delete from travel where gid = ? and vid =?";
            Object[] objects3 = {gid, vid};
            int num3 = AdminDao.executeUpdate(sql, objects3);

            //删除导游表和景点表只有一条记录的
            if (flag1){
                sql = "delete from guide where gid = ?";
                int num4 = AdminDao.executeUpdate(sql, objects1);
            }

            if (flag2){
                sql = "delete from viewspot where vid = ?";
                int num5 = AdminDao.executeUpdate(sql, objects2);
            }
        }

        req.getRequestDispatcher("/TraListByPageServlet?curPage=1&rows=8").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
