package com.example.demo.model;

import java.util.Date;

public class Card {
    private int id;
    private boolean status;
    private Date startDate;
    private Date endDate;
    private int idBook;
    private int idStudent;

    public Card() {
    }

    public Card(int id, boolean status, Date startDate, Date endDate, int idBook, int idStudent) {
        this.id = id;
        this.status = status;
        this.startDate = startDate;
        this.endDate = endDate;
        this.idBook = idBook;
        this.idStudent = idStudent;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public int getIdBook() {
        return idBook;
    }

    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }

    public int getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(int idStudent) {
        this.idStudent = idStudent;
    }

    @Override
    public String toString() {
        return "Card{" +
                "id=" + id +
                ", status=" + status +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", idBook=" + idBook +
                ", idStudent=" + idStudent +
                '}';
    }
}
