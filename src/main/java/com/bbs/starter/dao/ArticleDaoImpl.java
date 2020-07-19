package com.bbs.starter.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.bbs.starter.dto.Article;

@Component//AutoWired 연결위해
public class ArticleDaoImpl implements ArticleDao {
	public List<Article> getList() {
		Article article1 = new Article(1, "2020-01-01 12:12:12", "title1", "content1");
		Article article2 = new Article(2, "2020-01-01 12:12:12", "title2", "content2");
		Article article3 = new Article(3, "2020-01-01 12:12:12", "title3", "content3");
		List<Article> list = new ArrayList<>();
		list.add(article3);
		list.add(article2);
		list.add(article1);
		return list;
	}

}
