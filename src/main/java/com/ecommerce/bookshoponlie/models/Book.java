package com.ecommerce.bookshoponlie.models;

public class Book {
    private int id;
    private String name;
    private Double price;
    private Double priceSale;
    private String currency;
    private int quantity;
    private String author;
    private Double scoreAvg;
    private String urlPictureCover;
    private String dateCreate;
    private String dateUpdate;

    public Book(int id, String name, Double price, Double priceSale, String currency, int quantity, String author, Double scoreAvg, String urlPictureCover, String dateCreate, String dateUpdate) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.priceSale = priceSale;
        this.currency = currency;
        this.quantity = quantity;
        this.author = author;
        this.scoreAvg = scoreAvg;
        this.urlPictureCover = urlPictureCover;
        this.dateCreate = dateCreate;
        this.dateUpdate = dateUpdate;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Double getPrice() {
        return price;
    }

    public Double getPriceSale() {
        return priceSale;
    }

    public String getCurrency() {
        return currency;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getAuthor() {
        return author;
    }

    public Double getScoreAvg() {
        return scoreAvg;
    }

    public String getUrlPictureCover() {
        return urlPictureCover;
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

    public void setPrice(Double price) {
        this.price = price;
    }

    public void setPriceSale(Double priceSale) {
        this.priceSale = priceSale;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setScoreAvg(Double scoreAvg) {
        this.scoreAvg = scoreAvg;
    }

    public void setUrlPictureCover(String urlPictureCover) {
        this.urlPictureCover = urlPictureCover;
    }

    public void setDateCreate(String dateCreate) {
        this.dateCreate = dateCreate;
    }

    public void setDateUpdate(String dateUpdate) {
        this.dateUpdate = dateUpdate;
    }

    public Book() {
    }
}
