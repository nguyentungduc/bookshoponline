package com.ecommerce.bookshoponlie.models;

import java.util.List;

public class Book {
    private Integer id;
    private String name;
    private Integer edition;
    private Double price;
    private Double priceSale;
    private Integer enable;
    private String summary;
    private String currency;
    private Integer quantity;
    private String author;
    private String codeBook;
    private BookDetail bookDetail;
    private Publisher publisher;
    private List<Category> categories;

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", edition=" + edition +
                ", price=" + price +
                ", priceSale=" + priceSale +
                ", enable=" + enable +
                ", summary='" + summary + '\'' +
                ", currency='" + currency + '\'' +
                ", quantity=" + quantity +
                ", author='" + author + '\'' +
                ", codeBook='" + codeBook + '\'' +
                ", bookDetail=" + bookDetail +
                ", publisher=" + publisher +
                ", categories=" + categories +
                '}';
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEdition(Integer edition) {
        this.edition = edition;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public void setPriceSale(Double priceSale) {
        this.priceSale = priceSale;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setCodeBook(String codeBook) {
        this.codeBook = codeBook;
    }

    public void setBookDetail(BookDetail bookDetail) {
        this.bookDetail = bookDetail;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Integer getEdition() {
        return edition;
    }

    public Double getPrice() {
        return price;
    }

    public Double getPriceSale() {
        return priceSale;
    }

    public Integer getEnable() {
        return enable;
    }

    public String getSummary() {
        return summary;
    }

    public String getCurrency() {
        return currency;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public String getAuthor() {
        return author;
    }

    public String getCodeBook() {
        return codeBook;
    }

    public BookDetail getBookDetail() {
        return bookDetail;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public Book(Integer id, String name, Integer edition, Double price, Double priceSale, Integer enable, String summary, String currency, Integer quantity, String author, String codeBook, BookDetail bookDetail, Publisher publisher, List<Category> categories) {
        this.id = id;
        this.name = name;
        this.edition = edition;
        this.price = price;
        this.priceSale = priceSale;
        this.enable = enable;
        this.summary = summary;
        this.currency = currency;
        this.quantity = quantity;
        this.author = author;
        this.codeBook = codeBook;
        this.bookDetail = bookDetail;
        this.publisher = publisher;
        this.categories = categories;
    }

    public Book() {
    }
}