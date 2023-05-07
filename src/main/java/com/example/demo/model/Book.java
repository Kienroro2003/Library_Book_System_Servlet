package com.example.demo.model;

public class Book {
    private int id;
    private String name;
    private String author;
    private String desc;
    private int count;

    public Book() {
    }

    public Book(int id, String name, String author, String desc, int count) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.desc = desc;
        this.count = count;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", author='" + author + '\'' +
                ", desc='" + desc + '\'' +
                ", count=" + count +
                '}';
    }
}
