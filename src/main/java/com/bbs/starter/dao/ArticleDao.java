package com.bbs.starter.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.bbs.starter.dto.Article;
@Mapper//Mybatis 使用の為
public interface ArticleDao {
	public List<Article> getList();

	public void add(Map<String,Object> param);

	public int getTotalCount();

	public Article getOne(long id);

<<<<<<< HEAD
	public void delete(long id);

=======
>>>>>>> ea6cc5bb4b9baeeaadbc22e2d9442befbd13053d

}
