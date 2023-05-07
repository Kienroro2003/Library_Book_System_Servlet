package com.example.demo.service.impl;

import com.example.demo.model.Card;
import com.example.demo.repository.CardRepository;
import com.example.demo.repository.impl.CardRepositoryImpl;
import com.example.demo.service.CardService;

import java.util.List;

public class CardServiceImpl implements CardService {
    private CardRepository cardRepository = new CardRepositoryImpl();
    @Override
    public void insert(Card card) {
        cardRepository.insesrt(card);
    }

    @Override
    public List<Card> selectAll() {
        return cardRepository.selectAll();
    }
}
