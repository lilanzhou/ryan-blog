package com.ryan.dao;

import com.ryan.domain.Article;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ArticleMapper {
    int deleteByPrimaryKey(Integer id);
    int getTotalNumArticle();
    int insert(Article record);

    List<Article> selectAllArticle();
    List<Article>getArticleCreatedGroup();
    List<Article>getHotArticle();
    List<Article>recommendArticle();
    List<Article> getTagToArticle(Integer id);
    List<Article>showArchivesList(@Param("year")String year, @Param("month")String month);
    int insertSelective(Article record);

    Article selectByTitle(int id);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
}