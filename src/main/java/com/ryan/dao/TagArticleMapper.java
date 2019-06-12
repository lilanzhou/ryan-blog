package com.ryan.dao;

import com.ryan.domain.TagArticle;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TagArticleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TagArticle record);

    int insertSelective(TagArticle record);

    TagArticle selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TagArticle record);

    int updateByPrimaryKey(TagArticle record);
}