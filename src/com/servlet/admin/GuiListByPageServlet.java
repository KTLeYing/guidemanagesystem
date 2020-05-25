package com.servlet.admin;

import com.dao.AdminDao;
import com.entity.Guide;
import com.entity.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/GuiListByPageServlet")
public class GuiListByPageServlet extends HttpServlet {

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
        String gid = req.getParameter("gid1");
        String gname = req.getParameter("gname1");
        String sex = req.getParameter("sex1");

        //如果传入的参数为null，则置为空字符串,不然会出现空指针异常
        if (gid == null){
            gid = "";
        }
        if (gname == null){
            gname = "";
        }
        if (sex == null){
            sex = "";
        }

        //变为like查询所需的字符串参数
        String gid1 = "%" + gid + "%";
        String gname1 = "%" + gname + "%";
        String sex1 = "%" + sex + "%";

        //设置请求的属性参数，后面需要用
        req.setAttribute("gid", gid);
        req.setAttribute("gname", gname);
        req.setAttribute("sex", sex);

        System.out.println(gid);
        System.out.println(gname);
        System.out.println(sex);

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
        Page<Guide> guidePage = new Page<Guide>();
        guidePage.setCurPage(curPage1);//设置当前页数
        guidePage.setRows(rows1);//设置行数

        //计算总记录数
        String sql = "select count(*) as num from guide where gid like ? and gname like ? and sex like ?";
        Object[] objects = {gid1, gname1, sex1};
        int totalCount = AdminDao.findTotalCount(sql, objects);
        guidePage.setTotalCount(totalCount);
        System.out.println(totalCount);

        if (totalCount > 0){
            //计算总页数
            int totalPage = (totalCount % rows1) == 0? totalCount/rows1 : (totalCount/rows1 + 1);
            guidePage.setTotalPage(totalPage);
            System.out.println(totalPage);
            //如果当前页数大于总的页数,设置为最大的页数
            if (curPage1 > guidePage.getTotalPage()) {
                curPage1 = guidePage.getTotalPage();
                //重置当前页数
                guidePage.setCurPage(curPage1);
            }

            //计算开始的页数和每页的内容
            int start = (curPage1 - 1) * rows1;
            sql = "select * from guide where gid like ? and gname like ? and sex like ? limit ?, ?";
            Object[] objects1 = {gid1, gname1, sex1, start, rows1};
            ResultSet resultSet = AdminDao.qureyInfo(sql, objects1);

            ArrayList<Guide> guideList = new ArrayList<Guide>();
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

            guidePage.setArrayList(guideList);

            System.out.println(guidePage);
            System.out.println(guideList);


            req.setAttribute("guidePage", guidePage);

            req.getRequestDispatcher("/view/admin/guilist.jsp").forward(req, resp);

        }else {
            req.getRequestDispatcher("/view/others/nodata.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
