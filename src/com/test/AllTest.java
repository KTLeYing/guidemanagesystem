package com.test;

import java.util.Scanner;

public class AllTest {

    static GuideTest guideTest = new GuideTest();
    static AdminTest adminTest = new AdminTest();

    public static void main(String[] args) {
        selectIdentity();
    }

    public static void selectIdentity(){
        Scanner read = new Scanner(System.in);
        int identity;

        System.out.println("-------------一级菜单---------------");
        System.out.println("\t   1.导游身份登录");
        System.out.println("\t   2.管理员身份登录");
        System.out.println("\t   0.退出系统");

        while (true){
            System.out.print("请选择:");
            identity = read.nextInt();
            switch (identity){
                case 1:
                    guideLogin();
                    break;
                case 2:
                    adminLogin();
                    break;
                case 0:
                    System.exit(0);
                    break;
                default:
                    System.out.println("输入是非选择范围,请重新输入!");
            }
        }
    }

    public static void guideLogin(){
        Scanner read = new Scanner(System.in);
        int flag;
        System.out.println("-------------二级菜单---------------");
        System.out.println("\t   1.登录");
        System.out.println("\t   0.返回上一页");

        while (true) {
            System.out.print("请选择:");
            flag = read.nextInt();
            switch (flag) {
                case 1: {
                    while (true) {
                        String gid = guideTest.login1();
                        if (!gid.equals("")) {
                            System.out.println("导游登录成功!请进行下一步操作!");
                            guide(gid);
                            break;
                        } else {
                            System.out.println("导游用户名或密码错误!请重新登录");
                        }
                    }
                }
                break;
                case 0:
//                    System.exit(0);
                    selectIdentity();
                    break;
                default:
                    System.out.println("输入是非选择范围,请重新输入!");
            }
        }
    }

    public static void adminLogin(){
        Scanner read = new Scanner(System.in);
        int flag;
        System.out.println("-------------二级菜单---------------");
        System.out.println("\t   1.登录");
        System.out.println("\t   0.返回上一页");

        while (true) {
            System.out.print("请选择:");
            flag = read.nextInt();
            switch (flag) {
                case 1: {
                    while (true) {
                        boolean flag1 = adminTest.login1();
                        if (flag1) {
                            System.out.println("管理员登录成功!请进行下一步操作!");
                            admin();
                            break;
                        } else {
                            System.out.println("管理员用户名或密码错误!请重新登录");
                        }
                    }
                }
                break;
                case 0:
//                    System.exit(0);
                    selectIdentity();
                    break;
                default:
                    System.out.println("输入是非选择范围,请重新输入!");
            }
        }
    }

    public static void guide(String gid){
        Scanner read = new Scanner(System.in);
        int flag;
        System.out.println("-------------三级菜单---------------");
        System.out.println("\t   1.查询导游");
        System.out.println("\t   2.查询负责的景点信息");
        System.out.println("\t   3.查询负旅行信息");
        System.out.println("\t   0.返回上一页");

        while (true){
            System.out.print("请选择:");
            flag = read.nextInt();
            switch (flag){
                case 1:
                    guideTest.queryGuideInfo1(gid);
                    break;
                case 2:
                    guideTest.queryViewInfo1(gid);
                    break;
                case 3:
                    guideTest.queryTravelInfo1(gid);
                    break;
                case 0:
                    guideLogin();
                    break;
                default:
                    System.out.println("输入是非选择范围,请重新输入!");
            }
        }
    }

    public static void admin(){
        Scanner read = new Scanner(System.in);
        int flag;
        System.out.println("-------------三级菜单---------------");
        System.out.println("\t   1.查询信息");
        System.out.println("\t   2.添加信息");
        System.out.println("\t   3.修改信息");
        System.out.println("\t   4.删除信息");
        System.out.println("\t   0.返回上一页");

        while (true){
            System.out.print("请选择:");
            flag = read.nextInt();
            switch (flag){
                case 1:
                    adminQuery();
                    break;
                case 2:
                    adminAdd();;
                    break;
                case 3:
                    adminAlter();
                    break;
                case 4:
                    adminDelete();
                    break;
                case 0:
                    adminLogin();
                    break;
                default:
                    System.out.println("输入是非选择范围,请重新输入!");
            }
        }
    }


    public static void adminQuery(){
        Scanner read = new Scanner(System.in);
        int flag;
        System.out.println("-------------四级菜单---------------");
        System.out.println("\t   1.查询导游信息");
        System.out.println("\t   2.查询景点信息");
        System.out.println("\t   3.查询旅行信息");
        System.out.println("\t   0.返回上一页");

        while (true){
            System.out.print("请选择:");
            flag = read.nextInt();
            switch (flag){
                case 1:
                    adminTest.queryAllGuideInfo();
                    break;
                case 2:
                    adminTest.queryAllViewInfo();
                    break;
                case 3:
                    adminTest.queryAllTravelInfo();
                    break;
                case 0:
                    admin();
                    break;
                default:
                    System.out.println("输入是非选择范围,请重新输入!");
            }
        }
    }

    public static void adminAdd(){
        Scanner read = new Scanner(System.in);
        int flag;
        System.out.println("-------------四级菜单---------------");
        System.out.println("\t   1.添加导游信息");
        System.out.println("\t   2.添加景点信息");
        System.out.println("\t   3.添加旅行信息");
        System.out.println("\t   0.返回上一页");

        while (true){
            System.out.print("请选择:");
            flag = read.nextInt();
            switch (flag){
                case 1:
                    adminTest.addGuide1();
                    break;
                case 2:
                    adminTest.addView1();
                    break;
                case 3:
                    adminTest.addTravel1();
                    break;
                case 0:
                    admin();
                    break;
                default:
                    System.out.println("输入是非选择范围,请重新输入!");
            }
        }
    }

    public static void adminAlter(){
        Scanner read = new Scanner(System.in);
        int flag;
        System.out.println("-------------三级菜单---------------");
        System.out.println("\t   1.修改导游信息");
        System.out.println("\t   2.修改景点信息");
        System.out.println("\t   3.修改旅行信息");
        System.out.println("\t   0.返回上一页");

        while (true){
            System.out.print("请选择:");
            flag = read.nextInt();
            switch (flag){
                case 1:
                    adminTest.alterGuide1();
                    break;
                case 2:
                    adminTest.alterView1();
                    break;
                case 3:
                    adminTest.alterTravel1();
                    break;
                case 0:
                    admin();
                    break;
                default:
                    System.out.println("输入是非选择范围,请重新输入!");
            }
        }
    }

    public static void adminDelete(){
        Scanner read = new Scanner(System.in);
        int flag;
        System.out.println("-------------三级菜单---------------");
        System.out.println("\t   1.删除导游信息");
        System.out.println("\t   2.删除景点信息");
        System.out.println("\t   3.删除旅行信息");
        System.out.println("\t   0.返回上一页");

        while (true){
            System.out.print("请选择:");
            flag = read.nextInt();
            switch (flag){
                case 1:
                    adminTest.deleteGuide1();
                    break;
                case 2:
                    adminTest.deleteView1();
                    break;
                case 3:
                    adminTest.deleteTravel1();
                    break;
                case 0:
                    admin();
                    break;
                default:
                    System.out.println("输入是非选择范围,请重新输入!");
            }
        }
    }


}
