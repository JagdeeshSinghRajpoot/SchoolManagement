package com.Academy.Entity;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;


@Entity
@Table(name = "subject")
public class Subjects {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="subject_id")
	private long SubjectId;
	
	@Column(name = "subject_name")
	private String SubjectName;
	
	@ManyToOne
	@JoinColumn(name="Class_id", nullable=false)
	private Classes classes;
	
	@OneToMany(mappedBy="subject",fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	List<Teacher> teacher;


	public String getTeacher() {
		StringBuffer sb = new StringBuffer();
		if(teacher!=null) {
			for(Teacher p : teacher) {
				sb.append(p.getTeacher_name()+",");
			}
		}
		return sb.toString();
	}
	
	public String getSubjectName() {
		return SubjectName;
	}

	public void setSubjectName(String subjectName) {
		SubjectName = subjectName;
	}

	public long getSubjectId() {
		return SubjectId;
	}

	public Classes getClasses() {
		return classes;
	}

	public void setSubjectId(long subjectId) {
		SubjectId = subjectId;
	}

	public void setClasses(Classes classes) {
		this.classes = classes;
	}

	public void setTeacher(List<Teacher> teacherList) {
		this.teacher = teacherList;
		
	}
	
	

	

	
}
