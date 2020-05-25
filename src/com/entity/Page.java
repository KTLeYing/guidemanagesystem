package com.entity;

import java.util.ArrayList;
import java.util.List;

public class Page<T> {

    private int totalCount; //总记录数
    private int totalPage;//总页数
    private int curPage;  //当前页数
    private int rows;   //每页行数
    private ArrayList<T> arrayList;  //每页的内容

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public void setArrayList(ArrayList<T> arrayList) {
        this.arrayList = arrayList;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public int getCurPage() {
        return curPage;
    }

    public int getRows() {
        return rows;
    }

    public ArrayList<T> getArrayList() {
        return arrayList;
    }

    @Override
    public String toString() {
        return "Page{" +
                "totalCount=" + totalCount +
                ", totalPage=" + totalPage +
                ", curPage=" + curPage +
                ", rows=" + rows +
                ", arrayList=" + arrayList +
                '}';
    }
}
