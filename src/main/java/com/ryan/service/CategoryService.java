package com.ryan.service;

import com.ryan.domain.Article;
import com.ryan.domain.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Date : 2019:06:01
 * @Author : Lilanzhou
 * 说明 :
 */

public interface CategoryService {
    List<Article> getCategoryList(String name);
    List<Category>getCategory();
}
