package com.Academy.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Academy.Entity.Teacher;
import com.Hibernate.Util.HibernateUtil;

public class TeacherDAO {
	public static void addTeacher(Teacher t) {
		// STEP 1 : Build Session Factory object
		SessionFactory sf = HibernateUtil.buildSessionFactory();

		// STEP 2 : Open Session
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(t);
		tx.commit();

		session.close();
	}

	public static List<Teacher> listTeacher() {
		// STEP 1 : Build Session Factory object
		SessionFactory sf = HibernateUtil.buildSessionFactory();

		// STEP 2 : Open Session
		Session session = sf.openSession();

		List<Teacher> teacher = session.createQuery(" from Teacher ").list();

		session.close();

		return teacher;
	}
}
