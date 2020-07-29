package com.bbs.starter.service;

import java.util.Map;

import com.bbs.starter.dto.Member;

public interface MemberService {

	public Map<String, Object> checkLoginIdDup(String string);

	public Map<String, Object> join(Map<String, Object> param);

	public Member getOne(long loginedMemberId);

	public Member getMatchedOne(String string, String string2);

}
