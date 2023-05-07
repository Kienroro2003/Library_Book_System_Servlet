package com.example.demo.controller;

import com.example.demo.model.Card;
import com.example.demo.service.BookService;
import com.example.demo.service.CardService;
import com.example.demo.service.StudentService;
import com.example.demo.service.impl.BookServiceImpl;
import com.example.demo.service.impl.CardServiceImpl;
import com.example.demo.service.impl.StudentServiceImpl;

import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ControllerServlet", value = "/control")
public class ControllerServlet extends HttpServlet {
   private BookService bookService = new BookServiceImpl();
   private StudentService studentService = new StudentServiceImpl();
   private CardService cardService = new CardServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":{
                showFormCreate(req,resp);
                break;
            }
            default:
                showList(req,resp);
                break;
        }
    }

    private void showFormCreate(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/card/create.jsp");
        req.setAttribute("books", bookService.selectAll());
        req.setAttribute("students",studentService.selectAll());
        try {
            requestDispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showList(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/book/list.jsp");
        System.out.println(bookService.selectAll());
        req.setAttribute("books",bookService.selectAll());
        try {
            requestDispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":{
                try {
                    createCard(req,resp);
                } catch (ParseException e) {
                    throw new RuntimeException(e);
                }
                break;
            }
            default:
                break;
        }
    }

    private void createCard(HttpServletRequest req, HttpServletResponse resp) throws ParseException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/card/list.jsp");
        int id = Integer.parseInt(req.getParameter("id"));
        boolean status = true;
        Date startDate = new SimpleDateFormat("MM-dd-yyyy").parse(req.getParameter("startDate"));
        Date endDate = new SimpleDateFormat("MM-dd-yyyy").parse(req.getParameter("endDate"));
        int student = Integer.parseInt(req.getParameter("student"));
        int book = Integer.parseInt(req.getParameter("book"));
        Card card = new Card(id, status, startDate,endDate, book,student);
        System.out.println(card);
        cardService.insert(card);
        req.setAttribute("cards", cardService.selectAll());
        try {
            requestDispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}