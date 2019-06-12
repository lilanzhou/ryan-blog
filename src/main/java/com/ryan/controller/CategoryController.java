package com.ryan.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ryan.domain.Article;
import com.ryan.domain.Category;
import com.ryan.service.CategoryService;
import com.ryan.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Date : 2019:06:01
 * @Author : Lilanzhou
 * 说明 :
 */
@Controller
public class CategoryController extends BaseController {


    @RequestMapping(value ="/category/{cname}")
    public String showCategoryList(Model model, @PathVariable("cname")String cname){
        Page<Article>page=PageHelper.startPage(1,3);
        List<Article> categoryList = categoryService.getCategoryList(cname);
        PageInfo<Article> pageCategory = page.toPageInfo();
        recycle(model);
        model.addAttribute("pageC",pageCategory);
        model.addAttribute("categoryList",categoryList);
        return "list";
    }


    @RequestMapping("/pagec/{pageNum}")
    public String getAllPerson(Model model,@PathVariable( "pageNum") int pageNum) {
        pageNum=pageNum<=1?1:pageNum;
        Page<Article>page=PageHelper.startPage(pageNum,3);

        return "list";
    }
}
