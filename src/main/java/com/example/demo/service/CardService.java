package com.example.demo.service;

import com.example.demo.model.Card;

import java.util.List;

public interface CardService {
    void insert(Card card);
    List<Card> selectAll();
}
