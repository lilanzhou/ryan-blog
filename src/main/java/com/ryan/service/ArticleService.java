package com.ryan.service;

import com.ryan.domain.Article;

import java.util.List;

/**
 * @Date : 2019:06:01
 * @Author : Lilanzhou
 * 说明 :
 */
public interface ArticleService {

    Article selectByTitle(int id);
    List<Article>selectAllArticle();
    List <Article>getArticleCreatedGroup();
    List<Article>getHotArticle();
    List<Article>recommendArticle();
    List<Article>showArchivesList(String year,String month);
    List<Article> getTagToArticle(Integer id);
}
