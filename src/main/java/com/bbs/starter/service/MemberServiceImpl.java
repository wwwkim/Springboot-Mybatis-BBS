package com.bbs.starter.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbs.starter.dao.MemberDao;
import com.bbs.starter.util.Cutil;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao memberDao;

	@Override
	public Map<String, Object> checkLoginIdDup(String loginId) {
		int count = memberDao.getLoginIdDupCount(loginId);

		String resultCode = "";
		String msg = "";

		if (count == 0) {
			resultCode = "S-1";
			msg = "This ID is available.";
		} else {
			resultCode = "F-1";
			msg = "This ID is already being used.";
		}

		Map<String, Object> rs = new HashMap<String, Object>();
		rs.put("resultCode", resultCode);
		rs.put("msg", msg);

		return rs;
	}

	@Override
	public Map<String, Object> join(Map<String, Object> param) {
		memberDao.join(param);

		long newId = Cutil.getAsLong(param.get("id"));

		String resultCode = "";
		String msg = "";

		if ( newId == 0 ) {
			resultCode = "F-1";
			msg = "Failed to sign in";
		}
		else {
			resultCode = "S-1";
			msg = "Success";
		}

		Map<String, Object> rs = new HashMap<String, Object>();
		rs.put("resultCode", resultCode);
		rs.put("msg", msg);
		rs.put("newId", newId);

		return rs;
	}

}
