package com.example.demo.repository.impl;

import com.example.demo.model.Book;
import com.example.demo.repository.BaseRepository;
import com.example.demo.repository.BookRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookRepositoryImpl implements BookRepository {

    public static final String SELECT_FIND_ALL = "select * from book";

    @Override
    public List<Book> selectAll() {
        List<Book> bookList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FIND_ALL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String author = rs.getString("author");
                String desc = rs.getString("desc");
                int count = rs.getInt("count");
                Book benhVien = new Book(id, name, author, desc, count);
                bookList.add(benhVien);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookList;
    }
}
