package com.ecommerce.bookshoponlie.models;

import java.util.List;

public class BookDetail {
    private Integer id;
    private Integer pageNumber;
    private Integer chapterNumber;
    private Integer publishingYear;
    private String size;
    private String coverStyle;
    private String dateCreate;
    private String dateUpdate;
    private Language language;

    @Override
    public String toString() {
        return "BookDetail{" +
                "id=" + id +
                ", pageNumber=" + pageNumber +
                ", chapterNumber=" + chapterNumber +
                ", publishingYear=" + publishingYear +
                ", size='" + size + '\'' +
                ", coverStyle='" + coverStyle + '\'' +
                ", dateCreate='" + dateCreate + '\'' +
                ", dateUpdate='" + dateUpdate + '\'' +
                ", language=" + language +
                '}';
    }

    public BookDetail(Integer id) {
        this.id = id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPageNumber(Integer pageNumber) {
        this.pageNumber = pageNumber;
    }

    public void setChapterNumber(Integer chapterNumber) {
        this.chapterNumber = chapterNumber;
    }

    public void setPublishingYear(Integer publishingYear) {
        this.publishingYear = publishingYear;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setCoverStyle(String coverStyle) {
        this.coverStyle = coverStyle;
    }

    public void setDateCreate(String dateCreate) {
        this.dateCreate = dateCreate;
    }

    public void setDateUpdate(String dateUpdate) {
        this.dateUpdate = dateUpdate;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public Integer getId() {
        return id;
    }

    public Integer getPageNumber() {
        return pageNumber;
    }

    public Integer getChapterNumber() {
        return chapterNumber;
    }

    public Integer getPublishingYear() {
        return publishingYear;
    }

    public String getSize() {
        return size;
    }

    public String getCoverStyle() {
        return coverStyle;
    }

    public String getDateCreate() {
        return dateCreate;
    }

    public String getDateUpdate() {
        return dateUpdate;
    }

    public Language getLanguage() {
        return language;
    }

    public BookDetail(Integer id, Integer pageNumber, Integer chapterNumber, Integer publishingYear, String size, String coverStyle, String dateCreate, String dateUpdate, Language language) {
        this.id = id;
        this.pageNumber = pageNumber;
        this.chapterNumber = chapterNumber;
        this.publishingYear = publishingYear;
        this.size = size;
        this.coverStyle = coverStyle;
        this.dateCreate = dateCreate;
        this.dateUpdate = dateUpdate;
        this.language = language;
    }

    public BookDetail() {
    }
}
