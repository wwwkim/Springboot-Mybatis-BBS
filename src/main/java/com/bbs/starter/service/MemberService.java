package com.bbs.starter.service;

import java.util.Map;

public interface MemberService {

	public Map<String, Object> checkLoginIdDup(String string);

	public Map<String, Object> join(Map<String, Object> param);

}
