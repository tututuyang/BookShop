package com.kuang.controller;

import com.kuang.pojo.Books;
import com.kuang.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author: create by Bingda
 * @version: v1.0
 * @description: com.kuang.controller
 * @date:2020/3/17
 **/
@Controller
public class BooksController {

    @Autowired
    private BooksService booksService;

    //跳转首页
    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    /**
     *书籍列表
     * @param model
     * @return
     */
    @RequestMapping("/book/allBooks")
    public String allBooks(Model model) {
        List<Books> booksList = booksService.queryAllBook();
        model.addAttribute("booksList",booksList);
        return "allBooks";
    }


}
