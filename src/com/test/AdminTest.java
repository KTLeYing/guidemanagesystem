package com.test;

import com.dao.AdminDao;
import com.dao.GuideDao;
import com.entity.Guide;
import com.utils.JDBCUtils;
import org.junit.Test;

import java.awt.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;

public class AdminTest {

    Scanner read = new Scanner(System.in);

    //测试管理员登录
    /*@Test
    public void login(){
        String sql = "select * from admin where adId = ? and adPsw = ?";
        String adId = "ad01";
        String adPsw = "88888";
        Object[] objects = {adId, adPsw};
        ResultSet resultSet = AdminDao.login(sql, objects);
        try {
            if (resultSet.next()){
                System.out.println("登陆成功");
            }else {
                System.out.println("登录失败");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }
    }*/

    @Test
    public boolean login1(){
        System.out.print("请输入管理员账号:");
        String adId = read.next();
        System.out.print("请输入管理员密码:");
        String adPsw = read.next();

        boolean flag = false;
        String sql = "select * from admin where adId = ? and adPsw = ?";
        Object[] objects = {adId, adPsw};
        ResultSet resultSet = AdminDao.login(sql, objects);
        try {
            if (resultSet.next()){
               flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }

        return flag;
    }

    /**
     * 管理员查询操作
     */
    //测试查询所有导游信息
    @Test
    public void queryAllGuideInfo(){
        String sql = "select * from guide";
        Object[] objects = {};  //不用传object时，用{}来赋空值来操作
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
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

    //测试查询所有景点信息
    @Test
    public void queryAllViewInfo(){
        String sql = "select * from viewspot";
        Object[] objects = {};  //不用传object时，用{}来赋空值来操作
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                System.out.println(resultSet.getString("vid") + "  " + resultSet.getString("vname") + "  "
                        + resultSet.getString("ranking") + "  " + resultSet.getString("type") + "  "
                        + resultSet.getString("price") + "  " + resultSet.getString("openTime") + "  "
                        + resultSet.getString("location")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }
    }

    //测试查询所有旅行信息
    @Test
    public void queryAllTravelInfo(){
        String sql = "select g.gid, g.gname, v.vid, v.vname, visitTime, visitLength, visitNum, startPoint, destination, transportation" +
                "  from guide g, travel t, viewspot v where g.gid = t.gid and v.vid = t.vid";
        Object[] objects = {};  //不用传object时，用{}来赋空值来操作
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                System.out.println(resultSet.getString("gid") + "  " + resultSet.getString("gname") + "  "
                        + resultSet.getString("vid") + "  " + resultSet.getString("vname") + "  "
                        + resultSet.getDate("visitTime") + "  " + resultSet.getString("visitLength") + "  "
                        + resultSet.getString("visitNum") + "  " + resultSet.getString("startPoint") + "  "
                        + "  " + resultSet.getString("destination") + "  " + resultSet.getString("transportation")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(resultSet);
        }
    }


    /**
     * 管理员添加操作
     */
    //添加导游
   /* @Test
    public void addGuide(){
        String gid = "g10";
        String gname = "刘芳";
        String sex = "女";
        int age = 20;
        double salary = 4800.0;
        String workYears = "5年";
        String phoneNum = "13780923142";
        String psw = "77777";

        String sql = "insert into guide values(?, ?, ?, ?, ?, ?, ?, ?)";
        Object[] objects = {gid, gname, sex, age, salary, workYears, phoneNum, psw};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("添加成功!");
        }else {
            System.out.println("添加失败!");
        }
    }*/

    @Test
    public void addGuide1(){
        System.out.print("请输入导游ID:");
        String gid = read.next();
        System.out.print("请输入导游姓名:");
        String gname = read.next();
        System.out.print("请输入导游性别:");
        String sex = read.next();
        System.out.print("请输入导游年龄:");
        int age = read.nextInt();
        System.out.print("请输入导游工资:");
        double salary = read.nextDouble();
        System.out.print("请输入导游工龄:");
        String workYears = read.next();
        System.out.print("请输入导游手机号码:");
        String phoneNum = read.next();
        System.out.print("请输入导游密码:");
        String psw = read.next();

        String sql = "insert into guide values(?, ?, ?, ?, ?, ?, ?, ?)";
        Object[] objects = {gid, gname, sex, age, salary, workYears, phoneNum, psw};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("添加成功!");
        }else {
            System.out.println("添加失败!");
        }
    }

    //测试添加景点
    /*@Test
    public void addView(){
        String vid = "v05";
        String vname = "迪士尼乐园";
        String ranking = "AAAAA";
        String type = "游玩娱乐类";
        String price = "350元/人";
        String openTime = "8:00AM ~ 24:00PM";
        String location = "广东省广州市番禺区";

        String sql = "insert into viewspot values(?, ?, ?, ?, ?, ?, ?)";
        Object[] objects = {vid, vname, ranking, type, price, openTime, location};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("添加成功!");
        }
        else {
            System.out.println("添加失败!");
        }
    }*/

    @Test
    public void addView1(){
        System.out.print("请输入景点ID:");
        String vid = read.next();
        System.out.print("请输入景点名称:");
        String vname = read.next();
        System.out.print("请输入景点等级:");
        String ranking = read.next();
        System.out.print("请输入景点类型:");
        String type = read.next();
        System.out.print("请输入景点收费标准:");
        String price = read.next();
        System.out.print("请输入景点开放时间:");
        String openTime = read.next();
        System.out.print("请输入景点位置:");
        String location = read.next();

        String sql = "insert into viewspot values(?, ?, ?, ?, ?, ?, ?)";
        Object[] objects = {vid, vname, ranking, type, price, openTime, location};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("添加成功!");
        }
        else {
            System.out.println("添加失败!");
        }
    }

    //测试添加旅行
    @Test
    /*public void addTravel(){
        String gid = "g05";
        String vid = "v05";
        String visitTime = "2020-5-4";
        String visitLength = "10天";
        int visitNum = 100;
        String startPoint = "广东广州市";
        String destination = "香港湾仔区";
        String transportation = "大巴车";

        Object[] objects = {gid, vid, visitTime, visitLength, visitNum, startPoint, destination, transportation};
        String sql = "insert into travel values(?, ?, ?, ?, ?, ?, ?, ?)";
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("添加成功!");
        }
        else {
            System.out.println("添加失败!");
        }
    }*/

    public void addTravel1(){
        System.out.print("请输入导游ID:");
        String gid = read.next();
        System.out.print("请输入景点ID:");
        String vid = read.next();
        System.out.print("请输入旅行时间:");
        String visitTime = read.next();
        System.out.print("请输入旅行时长:");
        String visitLength = read.next();
        System.out.print("请输入旅行团人数:");
        int visitNum = read.nextInt();
        System.out.print("请输入出发点:");
        String startPoint = read.next();
        System.out.print("请输入目的地:");
        String destination = read.next();
        System.out.print("请输入旅行的交通工具:");
        String transportation = read.next();

        Object[] objects = {gid, vid, visitTime, visitLength, visitNum, startPoint, destination, transportation};
        String sql = "insert into travel values(?, ?, ?, ?, ?, ?, ?, ?)";
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("添加成功!");
        }
        else {
            System.out.println("添加失败!");
        }
    }

    /**
     * 管理员修改操作
     */
    //修改导游
    /*@Test
    public void alterGuide(){
        String gid = "g02";
        String gname = "李四";
        String sex = "男";
        int age = 25;
        double salary = 3500;
        String workYears = "2年";
        String phoneNum = "16700629142";
        String psw = "77777";

        String sql = "update guide set gname = ?, sex = ?, age = ?, salary = ?, workYears = ?," +
                " phoneNum = ?, psw = ? where gid = ?";
        Object[] objects = {gname, sex, age, salary, workYears, phoneNum, psw, gid};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("修改成功!");
        }
        else {
            System.out.println("修改失败!");
        }
    }*/

    @Test
    public void alterGuide1(){
        System.out.print("请输入导游ID:");
        String gid = read.next();
        System.out.print("请输入导游姓名:");
        String gname = read.next();
        System.out.print("请输入导游性别:");
        String sex = read.next();
        System.out.print("请输入导游年龄:");
        int age = read.nextInt();
        System.out.print("请输入导游工资:");
        double salary = read.nextDouble();
        System.out.print("请输入导游工龄:");
        String workYears = read.next();
        System.out.print("请输入导游手机号码:");
        String phoneNum = read.next();
        System.out.print("请输入导游密码:");
        String psw = read.next();

        String sql = "update guide set gname = ?, sex = ?, age = ?, salary = ?, workYears = ?," +
                " phoneNum = ?, psw = ? where gid = ?";
        Object[] objects = {gname, sex, age, salary, workYears, phoneNum, psw, gid};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("修改成功!");
        }
        else {
            System.out.println("修改失败!");
        }
    }

    //修改景点
    /*@Test
    public void alterView(){
        String vid = "v04";
        String vname = "迪士尼乐园";
        String ranking = "AAAAA";
        String type = "游玩娱乐类";
        String price = "250元/人";
        String openTime = "9:00AM ~ 24:00PM";
        String location = "广东省广州市番禺区";

        String sql = "update viewspot set vname = ?, ranking = ?, type = ?, price = ?, openTime = ?," +
                " location = ? where vid = ?";
        Object[] objects = {vname, ranking, type, price, openTime, location, vid};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("修改成功!");
        }
        else {
            System.out.println("修改失败!");
        }
    }*/

    @Test
    public void alterView1(){
        System.out.print("请输入景点ID:");
        String vid = read.next();
        System.out.print("请输入景点名称:");
        String vname = read.next();
        System.out.print("请输入景点等级:");
        String ranking = read.next();
        System.out.print("请输入景点类型:");
        String type = read.next();
        System.out.print("请输入景点收费标准:");
        String price = read.next();
        System.out.print("请输入景点开放时间:");
        String openTime = read.next();
        System.out.print("请输入景点位置:");
        String location = read.next();

        String sql = "update viewspot set vname = ?, ranking = ?, type = ?, price = ?, openTime = ?," +
                " location = ? where vid = ?";
        Object[] objects = {vname, ranking, type, price, openTime, location, vid};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("修改成功!");
        }
        else {
            System.out.println("修改失败!");
        }
    }

    //修改旅行
    /*@Test
    public void alterTravel(){
        String gid = "g01";
        String vid = "v01";
        String visitTime = "2020-5-9";
        String visitLength = "25天";
        int visitNum = 300;
        String startPoint = "广东佛山市";
        String destination = "香港湾仔区";
        String transportation = "大巴车";

        String sql = "update travel set visitTime = ?, visitLength = ?, visitNum = ?, startPoint = ?," +
                " destination = ?, transportation = ? where gid = ? and vid = ?";
        Object[] objects = {visitTime, visitLength, visitNum, startPoint, destination, transportation, gid, vid};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("修改成功!");
        }
        else {
            System.out.println("修改失败!");
        }
    }*/

    @Test
    public void alterTravel1(){
        System.out.print("请输入导游ID:");
        String gid = read.next();
        System.out.print("请输入景点ID:");
        String vid = read.next();
        System.out.print("请输入旅行时间:");
        String visitTime = read.next();
        System.out.print("请输入旅行时长:");
        String visitLength = read.next();
        System.out.print("请输入旅行团人数:");
        int visitNum = read.nextInt();
        System.out.print("请输入出发点:");
        String startPoint = read.next();
        System.out.print("请输入目的地:");
        String destination = read.next();
        System.out.print("请输入旅行的交通工具:");
        String transportation = read.next();

        String sql = "update travel set visitTime = ?, visitLength = ?, visitNum = ?, startPoint = ?," +
                " destination = ?, transportation = ? where gid = ? and vid = ?";
        Object[] objects = {visitTime, visitLength, visitNum, startPoint, destination, transportation, gid, vid};
        int num = AdminDao.executeUpdate(sql, objects);

        if (num > 0){
            System.out.println("修改成功!");
        }
        else {
            System.out.println("修改失败!");
        }
    }


    /**
     * 管理员添加操作
     */
    //测试删除导游
    /*@Test
    public void deleteGuide(){
        String sql = null;
        HashSet<String> hashSet = new HashSet<String>();

        String gid = "g04";
        sql = "select * from travel where gid = ?";
        Object[] objects = {gid};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                String str = resultSet.getString("vid");
                Object[] objects1 = {str};
                sql = "select count(*) as num from travel where vid = ?";
                ResultSet resultSet1 = AdminDao.qureyInfo(sql, objects1);
                resultSet1.next();
                if (resultSet1.getInt("num") == 1){
                    hashSet.add(str);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        sql = "delete from travel where gid = ?";
        Object[] objects2 = {gid};
        int num = AdminDao.executeUpdate(sql, objects2);

        sql = "delete from guide where gid = ?";
        Object[] objects3 = {gid};
        int num1 = AdminDao.executeUpdate(sql, objects3);

        int num2 = 0;
        Iterator<String> iterator = hashSet.iterator();
        while (iterator.hasNext()){
            sql = "delete from viewspot where vid = ?";
            Object[] objects4 = {iterator.next()};
            num2 = AdminDao.executeUpdate(sql, objects4);
        }

        if (num1 > 0 || (num > 0 && num1 > 0) || (num > 0 && num1 > 0 && num2 > 0) ){
            System.out.println("删除成功!");
        }else {
            System.out.println("删除失败!");
        }
    }*/

    @Test
    public void deleteGuide1(){
        System.out.print("请输入要删除的导游ID:");
        String gid = read.next();

        String sql = null;
        HashSet<String> hashSet = new HashSet<String>();

        sql = "select * from travel where gid = ?";
        Object[] objects = {gid};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        try {
            while (resultSet.next()){
                String str = resultSet.getString("vid");
                Object[] objects1 = {str};
                sql = "select count(*) as num from travel where vid = ?";
                ResultSet resultSet1 = AdminDao.qureyInfo(sql, objects1);
                resultSet1.next();
                if (resultSet1.getInt("num") == 1){
                    hashSet.add(str);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        sql = "delete from travel where gid = ?";
        Object[] objects2 = {gid};
        int num = AdminDao.executeUpdate(sql, objects2);

        sql = "delete from guide where gid = ?";
        Object[] objects3 = {gid};
        int num1 = AdminDao.executeUpdate(sql, objects3);

        int num2 = 0;
        Iterator<String> iterator = hashSet.iterator();
        while (iterator.hasNext()){
            sql = "delete from viewspot where vid = ?";
            Object[] objects4 = {iterator.next()};
            num2 = AdminDao.executeUpdate(sql, objects4);
        }

        if (num1 > 0 || (num > 0 && num1 > 0) || (num > 0 && num1 > 0 && num2 > 0) ){
            System.out.println("删除成功!");
        }else {
            System.out.println("删除失败!");
        }
    }

    //测试删除景点
    /*@Test
    public void deleteView(){
        String vid = "v05";

        String sql = "delete from travel where vid = ?";
        Object[] objects = {vid};
        int num = AdminDao.executeUpdate(sql, objects);

        sql = "delete from viewSpot where vid = ?";
        Object[] objects1 = {vid};
        int num1 = AdminDao.executeUpdate(sql, objects1);

        if(num1 > 0 || (num > 0 && num1 > 0)){
            System.out.println("删除成功!");
        }else {
            System.out.println("删除失败!");
        }
    }*/

    @Test
    public void deleteView1(){
        System.out.print("请输入要删除的景点ID:");
        String vid = read.next();

        String sql = "delete from travel where vid = ?";
        Object[] objects = {vid};
        int num = AdminDao.executeUpdate(sql, objects);

        sql = "delete from viewSpot where vid = ?";
        Object[] objects1 = {vid};
        int num1 = AdminDao.executeUpdate(sql, objects1);

        if(num1 > 0 || (num > 0 && num1 > 0)){
            System.out.println("删除成功!");
        }else {
            System.out.println("删除失败!");
        }
    }

    //测试删除旅行
    /*@Test
    public void deleteTravel(){
        String sql = null;
        HashSet<String> hashSet = new HashSet<String>();
        String gid = "g05";
        String vid = "v05";

        sql = "select count(*) as num from travel where vid = ?";
        Object[] objects = {vid};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        try {
            resultSet.next();
//            System.out.println(resultSet.getInt("num"));
            if (resultSet.getInt("num") == 1){
                hashSet.add(vid);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        sql = "delete from travel where gid = ? and vid = ?";
        Object[] objects1 = {gid, vid};
        int num = AdminDao.executeUpdate(sql, objects1);

        Iterator<String> iterator = hashSet.iterator();
        int num1 = 0;
        while (iterator.hasNext()){
            sql = "delete from viewSpot where vid = ?";
            Object[] objects2 = {iterator.next()};
//            System.out.println(objects2.toString());
            num1 = AdminDao.executeUpdate(sql, objects2);
        }

        if (num > 0 || (num > 0 && num1 > 0)){
            System.out.println("删除成功!");
        }else {
            System.out.println("删除失败!");
        }
    }*/

    @Test
    public void deleteTravel1(){
        System.out.print("请输入要删除的导游ID:");
        String gid = read.next();
        System.out.print("请输入要删除的景点ID:");
        String vid = read.next();

        String sql = null;
        HashSet<String> hashSet = new HashSet<String>();

        sql = "select count(*) as num from travel where vid = ?";
        Object[] objects = {vid};
        ResultSet resultSet = AdminDao.qureyInfo(sql, objects);
        try {
            resultSet.next();
//            System.out.println(resultSet.getInt("num"));
            if (resultSet.getInt("num") == 1){
                hashSet.add(vid);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        sql = "delete from travel where gid = ? and vid = ?";
        Object[] objects1 = {gid, vid};
        int num = AdminDao.executeUpdate(sql, objects1);

        Iterator<String> iterator = hashSet.iterator();
        int num1 = 0;
        while (iterator.hasNext()){
            sql = "delete from viewSpot where vid = ?";
            Object[] objects2 = {iterator.next()};
//            System.out.println(objects2.toString());
            num1 = AdminDao.executeUpdate(sql, objects2);
        }

        if (num > 0 || (num > 0 && num1 > 0)){
            System.out.println("删除成功!");
        }else {
            System.out.println("删除失败!");
        }
    }


}
