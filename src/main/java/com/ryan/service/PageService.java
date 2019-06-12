package com.ryan.service;

import com.github.pagehelper.PageInfo;
import com.ryan.domain.Article;

/**
 * @Date : 2019:06:02
 * @Author : Lilanzhou
 * 说明 :
 */
public interface PageService {
    PageInfo<Article> getArticleList(int pageNum, int pageSize);
    PageInfo<Article> pageCategoryList(int pageNum,int pageSize);
}
