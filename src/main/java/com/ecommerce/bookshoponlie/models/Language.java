package com.ecommerce.bookshoponlie.models;

public class Language {
    private Integer id;
    private String name;
    private String dateCreate;
    private String dateUpdate;

    @Override
    public String toString() {
        return "Language{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", dateCreate='" + dateCreate + '\'' +
                ", dateUpdate='" + dateUpdate + '\'' +
                '}';
    }

    public Language(Integer id) {
        this.id = id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDateCreate(String dateCreate) {
        this.dateCreate = dateCreate;
    }

    public void setDateUpdate(String dateUpdate) {
        this.dateUpdate = dateUpdate;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDateCreate() {
        return dateCreate;
    }

    public String getDateUpdate() {
        return dateUpdate;
    }

    public Language(Integer id, String name, String dateCreate, String dateUpdate) {
        this.id = id;
        this.name = name;
        this.dateCreate = dateCreate;
        this.dateUpdate = dateUpdate;
    }

    public Language() {
    }
}
