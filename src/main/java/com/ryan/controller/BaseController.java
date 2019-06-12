package com.ryan.controller;

import com.github.pagehelper.PageInfo;
import com.ryan.domain.Article;
import com.ryan.domain.Category;
import com.ryan.domain.Tag;
import com.ryan.service.ArticleService;
import com.ryan.service.CategoryService;
import com.ryan.service.PageService;
import com.ryan.service.TagService;
import com.ryan.uitls.ArticleRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Date : 2019:06:03
 * @Author : Lilanzhou
 * 说明 :
 */

public class BaseController {

    @Autowired
    ArticleService articleService;
    @Autowired
    TagService tagService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    PageService pageService;
    @Autowired
    ArticleRespository articleRespository;

    public Model recycle(Model model ) {

        List<Article> list = articleService.selectAllArticle();
        articleRespository.saveAll(list);


        List<Article> articles = articleService.selectAllArticle();
        List<Tag> tags = tagService.getAllTags();
        List<Category> categories = categoryService.getCategory();
        List<Article>hotArticle=articleService.getHotArticle();
        List<Article> recommend=articleService.recommendArticle();

        PageInfo<Article> pageInfo = pageService.getArticleList(1, 3);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("page",pageInfo.getList());
        model.addAttribute("category", categories);
        model.addAttribute("recommend", recommend);
        model.addAttribute("article", articles);
        model.addAttribute("hot",hotArticle);
        model.addAttribute("tag", tags);
       return model;
    }
}
