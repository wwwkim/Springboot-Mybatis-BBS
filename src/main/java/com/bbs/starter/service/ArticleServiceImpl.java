package com.bbs.starter.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbs.starter.dao.ArticleDao;
import com.bbs.starter.dto.Article;
import com.bbs.starter.util.Cutil;

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	ArticleDao articleDao;

	@Override
	public List<Article> getList() {

		return articleDao.getList();
	}

	@Override
	public long add(Map<String, Object> param) {
		articleDao.add(param);

		return Cutil.getAsLong(param.get("id"));

	}

	@Override
	public int getTotalCount() {

		return articleDao.getTotalCount();
	}


}
