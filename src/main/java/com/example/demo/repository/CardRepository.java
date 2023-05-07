package com.example.demo.repository;

import com.example.demo.model.Card;

import java.util.List;

public interface CardRepository {
    void insesrt(Card card);
    List<Card> selectAll();
}
