package com.Academy.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Academy.Entity.Classes;
import com.Hibernate.Util.HibernateUtil;

public class ClassesDAO {
	
		public static void addClasses(Classes c) {
			// STEP 1 : Build Session Factory object
			SessionFactory sf = HibernateUtil.buildSessionFactory();

			// STEP 2 : Open Session
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			session.save(c);
			tx.commit();

			session.close();
		}

		public static List<Classes> listClasses() {
			// STEP 1 : Build Session Factory object
			SessionFactory sf = HibernateUtil.buildSessionFactory();

			// STEP 2 : Open Session
			Session session = sf.openSession();

			List<Classes> classes = session.createQuery(" from Classes ").list();

			session.close();

			return classes;
		}
}
