package com.test;

import com.dao.GuideDao;
import com.utils.JDBCUtils;
import org.junit.Test;

import java.sql.ResultSet;
import java.util.Scanner;

public class GuideTest {

    Scanner read = new Scanner(System.in);

    //导游登录测试
   /* @Test
    public void login(){
        String gid = "g02";
        String psw = "77777";
        String sql = "select * from guide where gid = ? and psw = ?";
        Object[] objects = {gid, psw};
        ResultSet resultSet = GuideDao.login(sql, objects);
        try {
            if (resultSet.next()){
                System.out.println("登录成功");
            }
            else {
                System.out.println("登录失败");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }
    }*/

    @Test
    public String login1(){
        System.out.print("请输入导游ID号:");
        String gid = read.next();
        System.out.print("请输入导游密码:");
        String psw = read.next();

        boolean flag = false;
        String sql = "select * from guide where gid = ? and psw = ?";
        Object[] objects = {gid, psw};
        ResultSet resultSet = GuideDao.login(sql, objects);
        try {
            if (resultSet.next()){
               flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }
        if (flag){
            return gid;
        }else {
            return "";
        }
    }

    //测试查询导游个人信息
    /*@Test
    public void queryGuideInfo(){
        //测试查询导游信息
        String sql = "select * from guide where gid = ?";
        String gid = "g01";
        Object[] objects = {gid};
        ResultSet resultSet = GuideDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                System.out.println(resultSet.getString("gid") + "  " + resultSet.getString("gname") + "  "
                        + resultSet.getString("sex") + "  " + resultSet.getInt("age") + "  "
                        + resultSet.getDouble("salary") + "  " + resultSet.getString("workYears") + "  "
                        + resultSet.getString("phoneNum") + "  " + resultSet.getString("psw")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
           JDBCUtils.close(resultSet);
        }
    }*/

    @Test
    public void queryGuideInfo1(String gid){
        String sql = "select * from guide where gid = ?";
        Object[] objects = {gid};
        ResultSet resultSet = GuideDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                System.out.println(resultSet.getString("gid") + "  " + resultSet.getString("gname") + "  "
                        + resultSet.getString("sex") + "  " + resultSet.getInt("age") + "  "
                        + resultSet.getDouble("salary") + "  " + resultSet.getString("workYears") + "  "
                        + resultSet.getString("phoneNum") + "  " + resultSet.getString("psw")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }
    }

    //测试自己负责的景点信息
    /*@Test
    public void queryViewInfo(){
        String sql = "select v.* from guide g, travel t, viewSpot v  where g.gid = ? and g.gid = t.gid and v.vid = t.vid";
        String gid = "g01";
        Object[] objects = {gid};
        ResultSet resultSet = GuideDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                System.out.println(resultSet.getString("vid") + "  " + resultSet.getString("vname") + "  "
                        + resultSet.getString("ranking") + "  " + resultSet.getString("type") + "  "
                        + resultSet.getString("price") + "  " + resultSet.getString("openTime") +  "  " + resultSet.getString("location")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
           JDBCUtils.close(resultSet);
        }
    }*/

    @Test
    public void queryViewInfo1(String gid){
        String sql = "select v.* from guide g, travel t, viewSpot v  where g.gid = ? and g.gid = t.gid and v.vid = t.vid";
        Object[] objects = {gid};
        ResultSet resultSet = GuideDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                System.out.println(resultSet.getString("vid") + "  " + resultSet.getString("vname") + "  "
                        + resultSet.getString("ranking") + "  " + resultSet.getString("type") + "  "
                        + resultSet.getString("price") + "  " + resultSet.getString("openTime") +  "  " + resultSet.getString("location")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }
    }

    //测试旅行各种信息
    /*@Test
    public void queryTravelInfo(){
        String sql = "select v.vid, v.vname, visitTime,visitLength, visitNum, StartPoint, destination, transportation" +
                " from guide g, travel t, viewSpot v  where g.gid = ? and g.gid = t.gid and v.vid = t.vid";
        String gid = "g01";
        Object[] objects = {gid};
        ResultSet resultSet = GuideDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                System.out.println(resultSet.getString("vid") + "  " + resultSet.getString("vname") + "  "
                        + resultSet.getDate("visitTime") + "  " + resultSet.getInt("visitLength") + "  "
                        + resultSet.getDouble("visitNum") + "  " + resultSet.getString("StartPoint") + "  "
                        + resultSet.getString("destination") + "  " + resultSet.getString("transportation")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }
    }*/

    @Test
    public void queryTravelInfo1(String gid){
        String sql = "select v.vid, v.vname, visitTime,visitLength, visitNum, StartPoint, destination, transportation" +
                " from guide g, travel t, viewSpot v  where g.gid = ? and g.gid = t.gid and v.vid = t.vid";
        Object[] objects = {gid};
        ResultSet resultSet = GuideDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                System.out.println(resultSet.getString("vid") + "  " + resultSet.getString("vname") + "  "
                        + resultSet.getDate("visitTime") + "  " + resultSet.getInt("visitLength") + "  "
                        + resultSet.getDouble("visitNum") + "  " + resultSet.getString("StartPoint") + "  "
                        + resultSet.getString("destination") + "  " + resultSet.getString("transportation")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }
    }

}
