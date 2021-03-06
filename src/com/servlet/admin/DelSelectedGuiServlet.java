package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@WebServlet("/DelSelectedGuiServlet")
public class DelSelectedGuiServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取复选框的表单请求参数
        String[] gids = req.getParameterValues("gid");

        for (String gid : gids) {
            System.out.println(gid);

            //查询该导游对应的景点是否只有一个，有就把该景点也删除
            String sql = "select * from travel where gid = ?";
            Object[] objects = {gid};
            ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
            List<String> list = new ArrayList<String>();//创建一个数组来存储travel表中记录数只有1条的vid
            try {//遍历结果集的vid
                while (resultSet.next()){
                    String vid = resultSet.getString("vid");
                    sql = "select count(*) as num from travel where vid = ?";
                    Object[] objects1 = {vid};
                    int num = AdminDao.findTotalCount(sql, objects1);
                    if (num == 1){//如果只有一条记录，就放进数组中
                        list.add(vid);
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            System.out.println(list);

            //先删除travel表
            sql = "delete from travel where gid = ?";
            int num1 = AdminDao.executeUpdate(sql, objects);

            //再删除景点表（记录数=1的景点）
            Iterator<String> iterator = list.iterator();//迭代list
            while (iterator.hasNext()){
                String vid1 = iterator.next();
                System.out.println(vid1);
                sql = "delete from viewspot where vid = ?";
                Object[] objects2 = {vid1};
                int num2 = AdminDao.executeUpdate(sql, objects2);
            }

            //最后删除导游表
            sql = "delete from guide where gid = ?";
            int num3 = AdminDao.executeUpdate(sql, objects);
        }

        req.getRequestDispatcher("/GuiListByPageServlet?curPage=1&rows=8").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
