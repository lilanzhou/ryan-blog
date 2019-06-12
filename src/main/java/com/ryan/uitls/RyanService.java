//package com.ryan.uitls;
//
//import com.ryan.domain.Article;
//import com.ryan.domain.Category;
//import com.ryan.domain.Tag;
//import com.ryan.service.ArticleService;
//import com.ryan.service.CategoryService;
//import com.ryan.service.TagService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.ui.Model;
//
//import java.util.ArrayList;
//import java.util.List;
//
///**
// * @Date : 2019:06:01
// * @Author : Lilanzhou
// * 说明 :
// */
//@Service
//public class RyanService {
//
//    @Autowired
//    ArticleService articleService;
//    @Autowired
//    TagService tagService;
//    @Autowired
//    CategoryService categoryService;
//    public Model recycle(Model model ) {
//       List<Article> articles = articleService.ShowArticleByTime();
//        List<Tag> tags = tagService.getAllTags();
//        List<Category> categories = categoryService.getCategory();
//        List<String> recommend = new ArrayList<>();
////        for (Article article : articles) {
////            if (article.getRecommend().equals("1")) {
////                recommend.add(article.getTitle());
////            }
////        }
//        model.addAttribute("category", categories);
//        model.addAttribute("recommend", recommend);
//        model.addAttribute("article", articles);
//        model.addAttribute("tag", tags);
//        return model;
//    }
//}
