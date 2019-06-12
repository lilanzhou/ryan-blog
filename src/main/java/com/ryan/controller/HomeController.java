package com.ryan.controller;

import com.ryan.domain.Article;
import com.ryan.domain.Tag;
import com.ryan.service.ArticleService;
import com.ryan.service.TagService;
import com.ryan.uitls.ArticleRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Date : 2019:05:31
 * @Author : Lilanzhou
 * 说明 :
 */
@Controller
public class HomeController {

     @Autowired
    ArticleService articleService;
     @Autowired
    TagService tagService;
    @Autowired
    ArticleRespository repository;

    public Model publicReturn(Model model){
        List<Article> group = articleService.getArticleCreatedGroup();
        model.addAttribute("group",group);
        return model;
    }
    @GetMapping("/archive/archives.html")
    public String archives(Model model) {
        publicReturn(model);
        return "archives";
    }

    @RequestMapping("/archive/{yearAndmonth}.html")
    public String archivesList(Model model,@PathVariable String yearAndmonth ){
        String year=yearAndmonth.substring(0,4);
        String month=yearAndmonth.substring(4,6);
        publicReturn(model);
        List<Article> group1 = articleService.showArchivesList(year,month);
        model.addAttribute("group1",group1);
        return "archives";
    }

    /**
     * 文章查询
     * @param model
     * @param aboutTitle
     * @return
     */
    @RequestMapping(value = "/search",method =RequestMethod.POST)
    @ResponseBody
    public Map search(Model model,@RequestParam("aboutTitle")String aboutTitle){
        List<Article> byTitle = repository.findByTitle(aboutTitle);
        Map<String,Object>map=new HashMap<>();
       if (byTitle.isEmpty()) {
           map.put("message","false");
       }else {
           map.put("message","true");
       }
        return map;
    }
    @RequestMapping("/tosearch/{aboutTitle}")
    public String toSearch(Model model,@PathVariable String aboutTitle){

        List<Article> byTitle = repository.findByTitle(aboutTitle);
        List<Map<String,Object>> mapList=new ArrayList<>();
//        for (Article a:byTitle
//             ) {
//            System.out.println(a.getTitle());
//        }
        for ( Article article:byTitle
             ) {
            Map<String,Object>map=new HashMap<>();
            map.put("article",article);
            List<Tag> tags=tagService.getTitleTag(article.getId());
            for ( Tag tag:tags
                 ) {
                map.put("tag",tag);
             //   System.out.println(tag.getName());
            }
            mapList.add(map);
        }

        model.addAttribute("search",mapList);
        return "search";
    }
}
