package com.entity;

public class Guide {

    private String gid;
    private String gname;
    private String sex;
    private int age;
    private double salary;
    private String workYears;
    private String phoneNum;
    private String psw;

    public void setGid(String gid) {
        this.gid = gid;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public void setWorkYears(String workYears) {
        this.workYears = workYears;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }

    public String getGid() {
        return gid;
    }

    public String getGname() {
        return gname;
    }

    public String getSex() {
        return sex;
    }

    public int getAge() {
        return age;
    }

    public double getSalary() {
        return salary;
    }

    public String getWorkYears() {
        return workYears;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public String getPsw() {
        return psw;
    }

    @Override
    public String toString() {
        return "Guide{" +
                "gid='" + gid + '\'' +
                ", gname='" + gname + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", salary=" + salary +
                ", workYears='" + workYears + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                ", psw='" + psw + '\'' +
                '}';
    }
}
