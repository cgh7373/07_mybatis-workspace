package com.kh.mybatis.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.member.model.vo.Member;

public class MemberDao {
	
	public int insertMember(SqlSession sqlSession, Member m) {
		
		/*********************************************************
		 * 
		 * sqlSession에서 제공하는 메소드를 통해 쿼리문 실행하고 결과 받을것
		 * 
		 * sqlSession.sql문종류에맞는메소드("매퍼별칭.해당sql의id", [빵꾸채울 객체.. ?같은거]);
		 * 
		 *********************************************************/
		
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public Member loginMember(SqlSession sss, Member m) {
		
		return sss.selectOne("memberMapper.loginMember", m);
		// selectOne 메소드 : 조회결과가 없으면 null 반환
		
	}

}
