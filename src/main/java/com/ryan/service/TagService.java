package com.ryan.service;

import com.ryan.domain.Tag;

import java.util.List;

/**
 * @Date : 2019:06:01
 * @Author : Lilanzhou
 * 说明 :
 */
public interface TagService {
    List<Tag> getAllTags();
    List<Tag> getTitleTag(Integer aid);
}
