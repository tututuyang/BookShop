package com.kuang.controller;

import com.kuang.pojo.Books;
import com.kuang.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class testController {

    @RequestMapping("/t1")
    public String t1(Model model) {
        model.addAttribute("msg","测试测试");
        return "test";
    }



}
