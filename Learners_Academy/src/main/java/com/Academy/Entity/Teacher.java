package com.Academy.Entity;




import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;


@Entity
@Table(name="teacher")
public class Teacher {


	@Id
	@GeneratedValue
	@Column(name ="teacher_id")
	private long teacher_id;
	
	@Column(name="teacher_name")
	private String Teacher_name;
	
	@ManyToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	@JoinTable(name = "teacher_Class_link", 
				joinColumns = {@JoinColumn(name="Class_id")},
				inverseJoinColumns = {@JoinColumn(name="teacher_id")}
			)
	private List<Classes> classes;
	
	@ManyToOne
	@JoinColumn(name="subject_id", nullable=false)
	private Subjects subject;

	public Subjects getSubject() {
		return subject;
	}

	
	
	public String getClasses() {
		StringBuffer sb = new StringBuffer();
		if(classes!=null) {
			for(Classes p : classes) {
				sb.append(p.getClassName()+",");
			}
		}
		return sb.toString();
	}

	public long getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(long teacher_id) {
		this.teacher_id = teacher_id;
	}
	
	public String getTeacher_name() {
		return Teacher_name;
	}

	public void setTeacher_name(String teacher_name) {
		Teacher_name = teacher_name;
	}

	public void setClasses(List<Classes> classList) {
		this.classes = classList;
		
	}
	
	public void setClassess(List<Classes> classList) {
		this.classes = classList;
		
	}
	
	
	
	public List<Classes> getListOfClasses() {
		  return classes;
				
	}

	public void setSubject(Subjects teaSubject1) {
		this.subject = teaSubject1;
		
	}

	
}
