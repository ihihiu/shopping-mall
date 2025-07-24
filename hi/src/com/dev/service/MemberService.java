package com.dev.service;

import com.dev.dao.MemberDAO;
import com.dev.vo.MemberVO;

public class MemberService {
	private static MemberService service = new MemberService();
	private MemberDAO dao = MemberDAO.getInstance();
	
	private MemberService() {}
	
	public static MemberService getInstance()
	{
		return service;
	}
	
	public void memberInsert(MemberVO member)
	{
		//arrayList.add(member);
		dao.memberInsert(member);
	}

	public boolean memberLogin(String id, String pwd) {
		// TODO Auto-generated method stub
		MemberVO acc = new MemberVO(id,pwd);
		return dao.memberLogin(acc);
	}

	
}