package com.entity;

public class View {

    private String vid;
    private String vname;
    private String ranking;
    private String type;
    private String price;
    private double grade;
    private String openTime;
    private String location;

    public void setVid(String vid) {
        this.vid = vid;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public void setRanking(String ranking) {
        this.ranking = ranking;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setGrade(double grade) {
        this.grade = grade;
    }

    public void setOpenTime(String openTime) {
        this.openTime = openTime;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getVid() {
        return vid;
    }

    public String getVname() {
        return vname;
    }

    public String getRanking() {
        return ranking;
    }

    public String getType() {
        return type;
    }

    public String getPrice() {
        return price;
    }

    public double getGrade() {
        return grade;
    }

    public String getOpenTime() {
        return openTime;
    }

    public String getLocation() {
        return location;
    }


    @Override
    public String toString() {
        return "ViewSpot{" +
                "vid='" + vid + '\'' +
                ", vname='" + vname + '\'' +
                ", ranking='" + ranking + '\'' +
                ", type='" + type + '\'' +
                ", price='" + price + '\'' +
                ", grade=" + grade +
                ", openTime='" + openTime + '\'' +
                ", location='" + location + '\'' +
                '}';
    }
}
