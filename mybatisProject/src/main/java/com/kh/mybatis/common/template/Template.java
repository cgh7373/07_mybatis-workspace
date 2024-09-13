package com.kh.mybatis.common.template;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {

	/****************************************************
	 * 기존 JDBC
	 * public static Connection getConnection() {
	 * 		// driver.properties 파일을 읽어서 
	 * 		// 해당 db와 접속된 Connection 객체 생성해서 반환
	 * }
	 * 
	 * public static void close(JDBC객체) {
	 * 		// 전달받은 객체를 반납시키는 구문 3종세트
	 * }
	 * 
	 * public static void commit|rollback(Conn) {
	 * 		// 트랜잭션 처리
	 * }
	 *****************************************************/
	
	// 마이바티스
	public static SqlSession getSqlSession() {
		
		// mybatis-config.xml 파일 읽어들여서
		// 해당 db와 접속된 SqlSession 객체 생성해서 반환
		SqlSession sqlSession = null;
		
		// sqlSession 생성하기 위해서 => SqlSessionFactory 필요
		// SqlSessionFactory 생성하기 위해서 => SqlSessionFactoryBuilder 필요
		String resource = "/mybatis-config.xml";
		
		try {
			InputStream stream = Resources.getResourceAsStream(resource);
			
			sqlSession = new SqlSessionFactoryBuilder().build(stream).openSession();
			// openSession(t/f) : 기본값 == false
			// openSession(boolean flag) : 자동커밋여부 (true면 하겠다. false는 안하겠다)
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return sqlSession;
	}
	
	
}
