package com.entity;

import java.sql.Date;

public class Travel {

    private String gid;
    private String gname;
    private String vid;
    private String vname;
    private Date visitTime;
    private String visitLength;
    private int visitNum;
    private String hotel;
    private String startPoint;
    private String destination;
    private String transportation;

    public void setGid(String gid) {
        this.gid = gid;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public void setVisitTime(Date visitTime) {
        this.visitTime = visitTime;
    }

    public void setVisitLength(String visitLength) {
        this.visitLength = visitLength;
    }

    public void setVisitNum(int visitNum) {
        this.visitNum = visitNum;
    }

    public void setHotel(String hotel) {
        this.hotel = hotel;
    }

    public void setStartPoint(String startPoint) {
        this.startPoint = startPoint;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public void setTransportation(String transportation) {
        this.transportation = transportation;
    }

    public String getGid() {
        return gid;
    }

    public String getVid() {
        return vid;
    }

    public String getGname() {
        return gname;
    }

    public String getVname() {
        return vname;
    }

    public Date getVisitTime() {
        return visitTime;
    }

    public String getVisitLength() {
        return visitLength;
    }

    public int getVisitNum() {
        return visitNum;
    }

    public String getHotel() {
        return hotel;
    }

    public String getStartPoint() {
        return startPoint;
    }

    public String getDestination() {
        return destination;
    }

    public String getTransportation() {
        return transportation;
    }

    @Override
    public String toString() {
        return "Travel{" +
                "gid='" + gid + '\'' +
                ", gname='" + gname + '\'' +
                ", vid='" + vid + '\'' +
                ", vname='" + vname + '\'' +
                ", visitTime=" + visitTime +
                ", visitLength='" + visitLength + '\'' +
                ", visitNum=" + visitNum +
                ", hotel='" + hotel + '\'' +
                ", startPoint='" + startPoint + '\'' +
                ", destination='" + destination + '\'' +
                ", transportation='" + transportation + '\'' +
                '}';
    }
}
