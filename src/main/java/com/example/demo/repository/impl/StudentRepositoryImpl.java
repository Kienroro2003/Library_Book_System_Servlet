package com.example.demo.repository.impl;

import com.example.demo.model.Book;
import com.example.demo.model.Student;
import com.example.demo.repository.BaseRepository;
import com.example.demo.repository.StudentRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentRepositoryImpl implements StudentRepository {
    public static final String SELECT_FIND_ALL = "select * from student";

    @Override
    public List<Student> selectAll() {
        List<Student> studentList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FIND_ALL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String className = rs.getString("className");
                Student student = new Student(id, name, className);
                studentList.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return studentList;
    }
}
