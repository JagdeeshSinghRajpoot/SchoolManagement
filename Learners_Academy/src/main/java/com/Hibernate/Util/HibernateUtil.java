package com.Hibernate.Util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.Academy.Entity.Student;
import com.Academy.Entity.Admin;
import com.Academy.Entity.Classes;
import com.Academy.Entity.Subjects;
import com.Academy.Entity.Teacher;



public class HibernateUtil {

	static SessionFactory sessionFactory = null;
	
	public static SessionFactory buildSessionFactory() {
		
		if(sessionFactory!=null) {
			return sessionFactory;
		}
		//STEP 1: Create Configuration Object
		Configuration cfg = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class)
				.addAnnotatedClass(Classes.class).addAnnotatedClass(Subjects.class).addAnnotatedClass(Teacher.class).addAnnotatedClass(Admin.class);
		sessionFactory = cfg.buildSessionFactory();
		

		
		return sessionFactory;
	}
}
