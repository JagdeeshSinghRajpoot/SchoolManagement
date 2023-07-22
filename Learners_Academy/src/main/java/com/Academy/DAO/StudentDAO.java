package com.Academy.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Academy.Entity.Student;
import com.Hibernate.Util.HibernateUtil;

public class StudentDAO {
	
		public static void addStudent(Student s) {
			// STEP 1 : Build Session Factory object
			SessionFactory sf = HibernateUtil.buildSessionFactory();

			// STEP 2 : Open Session
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			session.save(s);
			tx.commit();

			session.close();
		}

		public static List<Student> listStudent() {
			// STEP 1 : Build Session Factory object
			SessionFactory sf = HibernateUtil.buildSessionFactory();

			// STEP 2 : Open Session
			Session session = sf.openSession();

			List<Student> student = session.createQuery(" from Student ").list();

			session.close();

			return student;
		}
}
