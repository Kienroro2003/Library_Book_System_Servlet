package com.example.demo.repository.impl;

import com.example.demo.model.Book;
import com.example.demo.model.Card;
import com.example.demo.repository.BaseRepository;
import com.example.demo.repository.CardRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CardRepositoryImpl  implements CardRepository {
    private static final String INSERT_BENH_VIEN = "INSERT INTO card(id,id_book,id_student,status,start_date,end_date) VALUES (?,?,?,?,?,?);";
    public static final String SELECT_FIND_ALL = "SELECT * from card";

    @Override
    public void insesrt(Card card){
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BENH_VIEN);
            preparedStatement.setInt(1,card.getId());
            preparedStatement.setInt(2,card.getIdBook());
            preparedStatement.setInt(3,card.getIdStudent());
            preparedStatement.setBoolean(4,card.isStatus());
            preparedStatement.setDate(5, new java.sql.Date(card.getStartDate().getTime()));
            preparedStatement.setDate(6, new java.sql.Date(card.getEndDate().getTime()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Card> selectAll() {
        List<Card> cardList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FIND_ALL);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int idBook = rs.getInt("id_book");
                int idStudent = rs.getInt("id_student");
                boolean status = rs.getBoolean("status");
                Date startDate = rs.getDate("start_date");
                Date endDate = rs.getDate("end_date");
                Card card = new Card(id, status,startDate,endDate,idBook,idStudent);
                cardList.add(card);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cardList;
    }
}
