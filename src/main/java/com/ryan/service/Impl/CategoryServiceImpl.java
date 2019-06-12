package com.ryan.service.Impl;

import com.ryan.dao.CategoryMapper;
import com.ryan.domain.Article;
import com.ryan.domain.Category;
import com.ryan.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Date : 2019:06:01
 * @Author : Lilanzhou
 * 说明 :
 */
@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    CategoryMapper categoryMapper;


    @Override
    public List<Article> getCategoryList(String name) {
        return categoryMapper.getCategoryByName(name);
    }

    @Override
    public List<Category> getCategory() {
        return categoryMapper.getCategory();
    }
}
