package com.example.demo.service.impl;

import com.example.demo.model.Book;
import com.example.demo.repository.BookRepository;
import com.example.demo.repository.impl.BookRepositoryImpl;
import com.example.demo.service.BookService;

import java.util.List;

public class BookServiceImpl implements BookService {
    private BookRepository bookRepository = new BookRepositoryImpl();
    @Override
    public List<Book> selectAll() {
        return bookRepository.selectAll();
    }
}
