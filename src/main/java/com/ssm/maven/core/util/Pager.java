package com.ssm.maven.core.util;


import java.beans.Transient;

/**
 * Created by admin on 2017/4/11.
 */
public class Pager {
    private Integer page = 1;

    private Integer rows = 10;

    private String order;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public String getOrder(){
        return this.order;
    }

    public void setOrder(String order ){
        this.order = order;
    }
}
