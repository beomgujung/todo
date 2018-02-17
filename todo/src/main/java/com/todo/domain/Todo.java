package com.todo.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class Todo {
	private int tno, mno, cno;
	private String title, content;
	private Date startDate, endDate;
}
