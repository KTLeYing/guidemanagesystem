package com.servlet.admin;

import com.dao.AdminDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet("/DeleteNewsServlet")
public class DeleteNewsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取请求参数
        String nid = req.getParameter("nid");
        int nid1 = Integer.parseInt(nid);

        //查询是否存在该将要删除的记录
        String sql = "select * from news where nid = ?";
        Object[] objects = {nid1};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);

        try {//存在，则删除
            if (resultSet.next()){
                sql = "delete from news where nid = ?";
                int num = AdminDao.executeUpdate(sql, objects);
                if (num > 0){//删除成功
                    resp.getWriter().write("<script>alert('恭喜您！删除新闻成功！'); window.location='" + req.getContextPath() + "/view/admin/deletenews.jsp';" +  "window.close();</script>");
                }
            }else {//找不到要删除的记录
                req.getRequestDispatcher("/view/others/deletefailed.jsp").forward(req, resp);
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
