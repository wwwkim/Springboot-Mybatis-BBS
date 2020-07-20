package com.bbs.starter.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbs.starter.dao.ArticleDao;
import com.bbs.starter.dto.Article;
@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	ArticleDao articleDao;

	@Override
	public List<Article> getList() {

		return articleDao.getList();
	}

	@Override
	public void add(Map<String, Object> param) {
		articleDao.add(param);

	}


}
