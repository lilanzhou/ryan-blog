package com.ryan.service.Impl;

import com.ryan.dao.TagMapper;
import com.ryan.domain.Tag;
import com.ryan.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Date : 2019:06:01
 * @Author : Lilanzhou
 * 说明 :
 */
@Service
public class TagServiceImpl implements TagService {
    @Autowired
    TagMapper tagMapper;
    @Override
    public List<Tag> getAllTags() {
        return tagMapper.getAllTag();
    }

    @Override
    public List<Tag> getTitleTag(Integer aid) {
        return tagMapper.getTitleTag(aid);
    }
}
