package com.servlet.admin;

import com.dao.AdminDao;
import com.entity.Guide;
import com.entity.Page;
import com.entity.Travel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/TraListByPageServlet")
public class TraListByPageServlet extends HttpServlet {

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
        String gname = req.getParameter("gname1");
        String vname = req.getParameter("vname1");
        String visitTime = req.getParameter("visitTime1");

        //如果传入的参数为null，则置为空字符串,不然会出现空指针异常
        if (gname == null){
            gname = "";
        }
        if (vname == null){
            vname = "";
        }
        if (visitTime == null){
            visitTime = "";
        }

        //变为like查询所需的字符串参数
        String gname1 = "%" + gname + "%";
        String vname1 = "%" + vname + "%";
        String visitTime1 = "%" + visitTime + "%";

        //设置请求的属性参数，后面需要用
        req.setAttribute("gname", gname);
        req.setAttribute("vname", vname);
        req.setAttribute("visitTime", visitTime);

        System.out.println(gname);
        System.out.println(vname);
        System.out.println(visitTime);

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
        Page<Travel> travelPage = new Page<Travel>();
        travelPage.setCurPage(curPage1);//设置当前页数
        travelPage.setRows(rows1);//设置行数

        //计算总记录数
        String sql = "select count(*) as num from guide g, travel t, viewspot v where g.gname like ? and v.vname like ? and t.visitTime like ? and g.gid = t.gid and t.vid = v.vid";
        Object[] objects = {gname1, vname1, visitTime1};
        int totalCount = AdminDao.findTotalCount(sql, objects);
        travelPage.setTotalCount(totalCount);
        System.out.println(totalCount);

        if (totalCount > 0){
            //计算总页数
            int totalPage = (totalCount % rows1) == 0? totalCount/rows1 : (totalCount/rows1 + 1);
            travelPage.setTotalPage(totalPage);
            System.out.println(totalPage);
            //如果当前页数大于总的页数,设置为最大的页数
            if (curPage1 > travelPage.getTotalPage()) {
                curPage1 = travelPage.getTotalPage();
                //重置当前页数
                travelPage.setCurPage(curPage1);
            }

            //计算开始的页数和每页的内容
            int start = (curPage1 - 1) * rows1;
            sql = "select t.*,g.gname,v.vname from guide g, travel t, viewspot v where g.gname like ? and v.vname like ? and t.visitTime like ? and g.gid = t.gid and t.vid = v.vid limit ?, ?";
            Object[] objects1 = {gname1, vname1, visitTime1, start, rows1};
            ResultSet resultSet = AdminDao.qureyInfo(sql, objects1);

            ArrayList<Travel> travelList = new ArrayList<Travel>();
            try {
                while (resultSet.next()){
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
                    travelList.add(travel);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

            travelPage.setArrayList(travelList);

            System.out.println(travelPage);
            System.out.println(travelList);


            req.setAttribute("travelPage", travelPage);

            req.getRequestDispatcher("/view/admin/tralist.jsp").forward(req, resp);

        }else {
            req.getRequestDispatcher("/view/others/nodata.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
