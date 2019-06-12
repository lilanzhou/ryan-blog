package com.ryan.dao;

import com.ryan.domain.Tag;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TagMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Tag record);
    List<Tag> getAllTag();
    int insertSelective(Tag record);
    List<Tag>getTitleTag(Integer id);
    Tag selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Tag record);

    int updateByPrimaryKey(Tag record);
}