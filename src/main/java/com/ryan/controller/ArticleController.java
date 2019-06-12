package com.ryan.controller;

import com.github.pagehelper.PageInfo;
import com.ryan.domain.Article;
import com.ryan.domain.Tag;
import com.ryan.service.ArticleService;
import com.ryan.service.PageService;
import com.ryan.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Date : 2019:05:31
 * @Author : Lilanzhou
 * 说明 :
 */
@Controller
public class ArticleController extends BaseController{

    @RequestMapping("/")
    public String index(Model model, HttpServletRequest request){
       recycle(model);
        return "index";
    }



    @RequestMapping("/page/{pageNum}")
    public String getAllPerson(Model model,HttpServletRequest request,@PathVariable( "pageNum") int pageNum) {
        pageNum=pageNum<=1?1:pageNum;
        recycle(model);
        PageInfo<Article> pageInfo = pageService.getArticleList(pageNum, 3);
        model.addAttribute("pageInfo",pageInfo);
//        model.addAttribute("page",pageInfo.getList());
        return "index";
    }



    @GetMapping("/article/{id}")
    public String toContent(Model model,HttpServletRequest request,@PathVariable("id")int id){

        Article article = articleService.selectByTitle(id);
        Article previousArticle=articleService.selectByTitle(id-1);
        Article nextArticle=articleService.selectByTitle(id+1);
        if(article==null){
            model.addAttribute("msg","该文章已被删除！");
            return "404";
        }else {
            model.addAttribute("articles",article);
            model.addAttribute("previousArticle",previousArticle);
            model.addAttribute("nextArticle",nextArticle);
        }
        List<Tag> titleTag = tagService.getTitleTag(id);
        List<Article> aboutTitle=articleService.getTagToArticle(id);
        recycle(model);
        model.addAttribute("aboutTitle",aboutTitle);
        model.addAttribute("tags",titleTag);
        return "view";
    }

}
