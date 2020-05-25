package com.entity;

import java.util.Date;

public class News {

    private int nid;
    private String title;
    private String url;
    private String type;
    private Date pubTime;

    public void setNid(int nid) {
        this.nid = nid;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setPubTime(Date pubTime) {
        this.pubTime = pubTime;
    }

    public int getNid() {
        return nid;
    }

    public String getTitle() {
        return title;
    }

    public String getUrl() {
        return url;
    }

    public String getType() {
        return type;
    }

    public Date getPubTime() {
        return pubTime;
    }

    @Override
    public String toString() {
        return "News{" +
                "nid=" + nid +
                ", title='" + title + '\'' +
                ", url='" + url + '\'' +
                ", type='" + type + '\'' +
                ", pubTime=" + pubTime +
                '}';
    }
}
