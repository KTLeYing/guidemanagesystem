package com.utils;

import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.sql.*;
import java.util.HashMap;

public class JDBCUtils {

    /*private static String driver = "com.mysql.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/guide_view";
    private static String user = "root";
    private static String password = "105293";*/

    private static String driver = null;
    private static String url = null;
    private static String user = null;
    private static String password = null;
    private static String xsdPath = "database.conf.xsd";
    private static String xmlPath = "database.conf.xml";

    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    private static ResultSet resultSet = null;

    //执行后会先自动执行加载static里面的东西
    static {
        //用out目录的配置文件
        //basePath路径会是： /D:/IDEA/Idea-workplace/guidemanagesystem3/out/production/guidemanagesystem3/
        String basePath = Thread.currentThread().getContextClassLoader().getResource("").getPath();
//        System.out.println(basePath);
        //xsdPath路径会是：/D:/IDEA/Idea-workplace/guidemanagesystem3/out/production/guidemanagesystem3/database.conf.xsd
        xsdPath = basePath + xsdPath;
        //xmlPath路径会是：/D:/IDEA/Idea-workplace/guidemanagesystem3/out/production/guidemanagesystem3/database.conf.xml
        xmlPath = basePath + xmlPath;
//        System.out.println(xsdPath);
//        System.out.println(xmlPath);
    }

    public static Connection getConnection() throws ParserConfigurationException, SAXException {
        //增加一步操作，先读取数据库配置信息,再获取数据库连接
        if (XmlValidator.validate(xsdPath, xmlPath)){
            HashMap<String, String> hashMap = new HashMap<String, String>();
            //解析器，解析配置文件,让hashmap得到xmlPath文件的driver、url、user和password（如果不解析会出现空指针异常，值均为null）
            hashMap = XmlParser.parse(xmlPath);//解析器，解析配置文件,
            //获取hashmap的用于连接数据库所需的各种信息
            driver = hashMap.get("driver");
            url = hashMap.get("url");
            user = hashMap.get("user");
            password = hashMap.get("password");
//            System.out.println(driver);
//            System.out.println(url);
//            System.out.println(user);
//            System.out.println(password);
        }
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, user, password);
            System.out.println("连接成功");
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return connection;
    }

    /*public static Connection getConnection(){
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, user, password);
            System.out.println("连接成功");
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return connection;
    }*/

    //释放资源,对于查询
    public static void close(ResultSet resultSet, Statement statement, Connection connection) {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (statement != null) {
            try {
                statement.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (connection != null) {
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    //释放资源，对于更新
    public static void close(Statement statement, Connection connection) {
        if (statement != null) {
            try {
                statement.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if (connection != null) {
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    //关闭资源，用于查询
    public static void close(ResultSet resultSet) {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void connCommit(){
        try {
            connection.commit();
            connection.setAutoCommit(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
