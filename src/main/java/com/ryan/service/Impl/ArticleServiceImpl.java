package com.ryan.service.Impl;

import com.ryan.dao.ArticleMapper;
import com.ryan.domain.Article;
import com.ryan.service.ArticleService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Date : 2019:06:01
 * @Author : Lilanzhou
 * 说明 :
 */
@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    ArticleMapper articleMapper;

    @Override
    public Article selectByTitle(int id) {
        return articleMapper.selectByTitle(id);
    }

    @Override
    public List<Article> selectAllArticle() {
        return articleMapper.selectAllArticle();
    }

    @Override
    public List<Article> getArticleCreatedGroup() {
        return articleMapper.getArticleCreatedGroup();
    }

    @Override
    public List<Article> getHotArticle() {
        return articleMapper.getHotArticle();
    }

    @Override
    public List<Article> recommendArticle() {
        return articleMapper.recommendArticle();
    }

    @Override
    public List<Article> showArchivesList(String year,String month) {
        return  articleMapper.showArchivesList(year,month);
    }

    @Override
    public List<Article> getTagToArticle(Integer id) {
        return  articleMapper.getTagToArticle(id);
    }

}
