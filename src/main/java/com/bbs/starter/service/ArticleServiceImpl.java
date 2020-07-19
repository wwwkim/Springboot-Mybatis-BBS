package com.bbs.starter.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.bbs.starter.dto.Article;
@Service
public class ArticleServiceImpl implements ArticleService {

	@Override
	public List<Article> getList() {

		//fake data for test
		Article article1=new Article(1,"2019-01-01 12:12:12","tittle1","content1");
		Article article2=new Article(2,"2019-01-01 12:12:12","tittle2","content2");
		Article article3=new Article(3,"2019-01-01 12:12:12","tittle3","content3");

		List<Article> list = new ArrayList<>();

		list.add(article3);
		list.add(article2);
		list.add(article1);

		return list;
	}

}
