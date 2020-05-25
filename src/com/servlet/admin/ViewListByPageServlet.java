package com.servlet.admin;

import com.dao.AdminDao;
import com.entity.Guide;
import com.entity.Page;
import com.entity.View;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/ViewListByPageServlet")
public class ViewListByPageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取请求的当前页和行数
        String curPage = req.getParameter("curPage");
        String rows = req.getParameter("rows");
        System.out.println(curPage);
        System.out.println(rows);

        //获取模糊查询的参数
        String vname = req.getParameter("vname1");
        String type = req.getParameter("type1");
        String location = req.getParameter("location1");

        //如果传入的参数为null，则置为空字符串,不然会出现空指针异常
        if (vname == null){
            vname = "";
        }
        if (type == null){
            type = "";
        }
        if (location == null){
            location = "";
        }

        //变为like查询所需的字符串参数
        String vname1 = "%" + vname + "%";
        String type1 = "%" + type + "%";
        String location1 = "%" + location + "%";

        //设置请求的属性参数，后面需要用
        req.setAttribute("vname", vname);
        req.setAttribute("type", type);
        req.setAttribute("location", location);

        System.out.println(vname);
        System.out.println(type);
        System.out.println(location);

        //如果当前页和每页行数为设置，为空,自己手动设置
        if (curPage.equals("") || curPage == null){
            curPage = "1";
        }
        if (rows.equals("") || curPage == null){
            rows = "8";
        }

        //转化为整型
        int curPage1 = Integer.parseInt(curPage);
        int rows1 = Integer.parseInt(rows);

        //如果当前页数小于1，置为1
        if (curPage1 < 1){
            curPage1 = 1;
        }


        //创建分页对象
        Page<View> viewPage = new Page<View>();
        viewPage.setCurPage(curPage1);//设置当前页数
        viewPage.setRows(rows1);//设置行数

        //计算总记录数
        String sql = "select count(*) as num from viewspot where vname like ? and type like ? and location like ?";
        Object[] objects = {vname1, type1, location1};
        int totalCount = AdminDao.findTotalCount(sql, objects);
        viewPage.setTotalCount(totalCount);
        System.out.println(totalCount);

        if (totalCount > 0){
            //计算总页数
            int totalPage = (totalCount % rows1) == 0? totalCount/rows1 : (totalCount/rows1 + 1);
            viewPage.setTotalPage(totalPage);
            System.out.println(totalPage);
            //如果当前页数大于总的页数,设置为最大的页数
            if (curPage1 > viewPage.getTotalPage()) {
                curPage1 = viewPage.getTotalPage();
                //重置当前页数
                viewPage.setCurPage(curPage1);
            }

            //计算开始的页数和每页的内容
            int start = (curPage1 - 1) * rows1;
            sql = "select * from viewspot where vname like ? and type like ? and location like ? limit ?, ?";
            Object[] objects1 = {vname1, type1, location1, start, rows1};
            ResultSet resultSet = AdminDao.qureyInfo(sql, objects1);

            ArrayList<View> viewList = new ArrayList<View>();
            try {
                while (resultSet.next()){
                    View view = new View();
                    view.setVid(resultSet.getString("vid"));
                    view.setVname(resultSet.getString("vname"));
                    view.setRanking(resultSet.getString("ranking"));
                    view.setType(resultSet.getString("type"));
                    view.setPrice(resultSet.getString("price"));
                    view.setGrade(resultSet.getDouble("grade"));
                    view.setOpenTime(resultSet.getString("openTime"));
                    view.setLocation(resultSet.getString("location"));
                    viewList.add(view);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

            viewPage.setArrayList(viewList);

            System.out.println(viewPage);
            System.out.println(viewList);


            req.setAttribute("viewPage", viewPage);

            req.getRequestDispatcher("/view/admin/viewlist.jsp").forward(req, resp);

        }else {
            req.getRequestDispatcher("/view/others/nodata.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
