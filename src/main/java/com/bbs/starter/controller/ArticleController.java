package com.bbs.starter.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbs.starter.dto.Article;
import com.bbs.starter.service.ArticleService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j // log.info(...)
public class ArticleController {
	@Autowired
	ArticleService articleService;

	@RequestMapping("/article/list")
	public String showList(Model aModel) {
		List<Article> list = articleService.getList();
		int totalCount=articleService.getTotalCount();
		aModel.addAttribute("list", list);
		aModel.addAttribute("totalCount", totalCount);
		log.info("list:" + list);
		return "article/list";
	}
	@RequestMapping("/article/add")
	public String showAdd() {
		return "article/add";
	}
	@RequestMapping("/article/doAdd")
	@ResponseBody
	public String doAdd(@RequestParam Map<String,Object> param) {
		long newId = articleService.add(param);
		String msg="Your post is added as No."+newId ;

		StringBuilder sb=new StringBuilder();

		sb.append("alert('"+msg+"');");
		sb.append("location.replace('./detail?id="+newId+"');");

		sb.insert(0, "<script>");
		sb.append("</script>");

		return sb.toString() ;
	}


}
