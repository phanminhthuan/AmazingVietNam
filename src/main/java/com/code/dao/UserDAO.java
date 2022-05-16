package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.code.model.User;

@Repository(value = "userDAO")
public class UserDAO {
  
  @Autowired
  private SessionFactory sessionFactory;
  
  public void save(User user) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.persist(user);
    tx.commit();
    session.close();
  }
  
  public void update(User user) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.update(user);
    tx.commit();
    session.close();
  }
  
  public List<User> findAll() {
    Session session = this.sessionFactory.openSession();
    List<User> result = session.createQuery("FROM User", User.class).getResultList();
    session.close();
    return result;
  }
  
  public User findById(int id) {
    Session session = this.sessionFactory.openSession();
    User model = session.find(User.class, id);
    session.close();
    return model;
  }
  
  public User findByPhoneNumber(String phoneNumber) {
		Session session = this.sessionFactory.openSession();
		List<User> result = session.createQuery("FROM User WHERE phone_number =:phoneNumber", User.class)
				.setParameter("phoneNumber", phoneNumber).getResultList();
		session.close();
		return result.size() > 0 ? result.get(0) : null;
	}
  
  public void delete(User user) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.delete(user);
    tx.commit();
    session.close();
  }
}