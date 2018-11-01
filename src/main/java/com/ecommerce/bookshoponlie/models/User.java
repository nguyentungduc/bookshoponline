package com.ecommerce.bookshoponlie.models;

public class User {
    private int id;
    private String name;
    private int status;
    private String dateCreate;
    private String dateUpdate;

    public User(int id, String name, int status, String dateCreate, String dateUpdate) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.dateCreate = dateCreate;
        this.dateUpdate = dateUpdate;
    }

    public User() {
        this.status=1;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getStatus() {
        return status;
    }

    public String getDateCreate() {
        return dateCreate;
    }

    public String getDateUpdate() {
        return dateUpdate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setDateCreate(String dateCreate) {
        this.dateCreate = dateCreate;
    }

    public void setDateUpdate(String dateUpdate) {
        this.dateUpdate = dateUpdate;
    }
}
