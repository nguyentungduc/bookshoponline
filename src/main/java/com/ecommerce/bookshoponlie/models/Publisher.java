package com.ecommerce.bookshoponlie.models;

public class Publisher {
    private int id;
    private String name;
    private String address;
    private String phone;
    private String dateCreate;
    private String dateUpdate;

    public Publisher() {
        this.id=0;
    }

    @Override
    public String toString() {
        return "Publisher{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", dateCreate='" + dateCreate + '\'' +
                ", dateUpdate='" + dateUpdate + '\'' +
                '}';
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setDateCreate(String dateCreate) {
        this.dateCreate = dateCreate;
    }

    public void setDateUpdate(String dateUpdate) {
        this.dateUpdate = dateUpdate;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getDateCreate() {
        return dateCreate;
    }

    public String getDateUpdate() {
        return dateUpdate;
    }

    public Publisher(int id, String name, String address, String phone, String dateCreate, String dateUpdate) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.dateCreate = dateCreate;
        this.dateUpdate = dateUpdate;
    }
}
