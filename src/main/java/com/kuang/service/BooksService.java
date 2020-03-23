package com.kuang.service;

import com.kuang.pojo.Books;

import java.util.List;

public interface BooksService {
    //添加书籍
    int addBooks(Books books);
    //更新书籍
    int updateBooks(Books books);
    //删除书籍
    int deleteBooks(int bookId);
    //查询书籍
    Books queryBooks(int bookId);
    //查询所有书籍
    List<Books> queryAllBook();
}
