package com.Academy.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Academy.Entity.Subjects;
import com.Hibernate.Util.HibernateUtil;

public class SubjectsDAO {
	
		public static void addSubjects(Subjects su) {
			// STEP 1 : Build Session Factory object
			SessionFactory sf = HibernateUtil.buildSessionFactory();

			// STEP 2 : Open Session
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			session.save(su);
			tx.commit();

			session.close();
		}

		public static List<Subjects> listSubject() {
			// STEP 1 : Build Session Factory object
			SessionFactory sf = HibernateUtil.buildSessionFactory();

			// STEP 2 : Open Session
			Session session = sf.openSession();

			List<Subjects> subjects = session.createQuery(" from Subjects ").list();

			session.close();

			return subjects;
		}
}
