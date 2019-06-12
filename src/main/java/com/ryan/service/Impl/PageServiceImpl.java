package com.ryan.service.Impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ryan.dao.ArticleMapper;
import com.ryan.domain.Article;
import com.ryan.service.PageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Date : 2019:06:02
 * @Author : Lilanzhou
 * 说明 :
 */
@Service
public class PageServiceImpl implements PageService {
    @Autowired
    ArticleMapper articleMapper;

    /**
     * 对所有文章分页
     * @param pageNum 当前第几页号
     * @param pageSize 分多少页
     * @return
     */
    @Override
    public PageInfo<Article> getArticleList(int pageNum, int pageSize) {
        Page<Article>page= PageHelper.startPage(pageNum, pageSize);
       List<Article> list = articleMapper.selectAllArticle();
        PageInfo<Article>pageInfo=page.toPageInfo();
        return pageInfo;

    }

    /**
     * 对分类后的文章进行分页
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageInfo<Article> pageCategoryList(int pageNum, int pageSize) {
         Page<Article>page=PageHelper.startPage(pageNum,pageSize);

        return null;
    }


}
