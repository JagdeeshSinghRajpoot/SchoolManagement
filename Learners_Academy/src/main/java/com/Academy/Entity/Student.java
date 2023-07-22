package com.Academy.Entity;


import javax.persistence.CascadeType;


import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {
	
	@Id
	@GeneratedValue
	@Column(name="student_id")
	private long studenId;

	@Column(name="student_name")
	private String StudentName;
	
//	@ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
//	@JoinColumn(name ="student_Class_link")
	@ManyToOne
	@JoinColumn(name="Class_id", nullable=false)
	private Classes classes;
	
	
	
	public long getStudenId() {
		return studenId;
	}

	public void setStudenId(long studenId) {
		this.studenId = studenId;
	}
	
	public String getStudentName() {
		return StudentName;
	}

	public void setStudentName(String studentName) {
		StudentName = studentName;
	}

	public Classes getClasses() {
		return classes;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	
}
