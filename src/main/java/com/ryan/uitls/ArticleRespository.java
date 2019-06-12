package com.ryan.uitls;

import com.ryan.domain.Article;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

import java.util.List;

/**
 * @Date : 2019:06:11
 * @Author : Lilanzhou
 * 说明 :
 */
public interface ArticleRespository extends ElasticsearchRepository<Article,Integer> {

    public List<Article>findByTitle(String title);
}
