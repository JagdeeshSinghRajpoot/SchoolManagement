package com.Academy.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Academy.Entity.Classes;
import com.Academy.Entity.Admin;
import com.Hibernate.Util.HibernateUtil;

public class AdminDAO {
	

	public static List<Admin> listAdmin() {
		// STEP 1 : Build Session Factory object
		SessionFactory sf = HibernateUtil.buildSessionFactory();

		// STEP 2 : Open Session
		Session session = sf.openSession();

		List<Admin> admin = session.createQuery(" from Admin ").list();

		session.close();

		return admin;
	}

	public static void addAdmin(Admin admin) {
		SessionFactory sf = HibernateUtil.buildSessionFactory();

		// STEP 2 : Open Session
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.save(admin);
		tx.commit();

		session.close();
		
	}
}
