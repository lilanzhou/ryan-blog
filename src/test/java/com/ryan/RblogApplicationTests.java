package com.ryan;


import com.ryan.domain.Article;
import com.ryan.service.ArticleService;
import com.ryan.uitls.ArticleRespository;
import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RblogApplicationTests {
  @Autowired
    ArticleRespository articleRespository;
  @Autowired
    ArticleService articleService;
    @Autowired
    ElasticsearchTemplate elasticsearchTemplate;
    @Test
    public void contextLoads() {
    }
    @Test
    public void index() {
        elasticsearchTemplate.createIndex(Article.class);
    }
    @Test
    public void insertList(){
        List<Article> list = articleService.selectAllArticle();
        articleRespository.saveAll(list);
    }

}
