package com.ecommerce.bookshoponlie.models;

public class Picture {
    private int id;
    private String url;
    private String dateCreate;
    private String dateUpdate;
    private int type;

    public void setId(int id) {
        this.id = id;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setDateCreate(String dateCreate) {
        this.dateCreate = dateCreate;
    }

    public void setDateUpdate(String dateUpdate) {
        this.dateUpdate = dateUpdate;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public String getUrl() {
        return url;
    }

    public String getDateCreate() {
        return dateCreate;
    }

    public String getDateUpdate() {
        return dateUpdate;
    }

    public int getType() {
        return type;
    }

    public Picture(int id, String url, String dateCreate, String dateUpdate, int type) {
        this.id = id;
        this.url = url;
        this.dateCreate = dateCreate;
        this.dateUpdate = dateUpdate;
        this.type = type;
    }

    public Picture() {
    }
}
