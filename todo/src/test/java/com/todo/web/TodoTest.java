package com.todo.web;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.todo.mappers.TimeMapper;

import lombok.extern.java.Log;


@Log
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class TodoTest {

	@Inject
	DataSource ds;
	
	@Inject
	TimeMapper timeMapper;
	
	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	
	@Test
	public void connectionTest() throws Exception{
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost/todo_db";
		String user = "root";
		String pw = "java97";
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user, pw);
		System.out.println(con);
		con.close();
	}
	
	@Test
	public void testHello() throws Exception{
		System.out.println(ds.getConnection());
	}
	
	@Test
	public void getTime() throws Exception{
		System.out.println(timeMapper.getTime());
	}
}
