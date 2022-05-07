package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code.model.Customer;

@Repository(value = "customerDAO")
public class CustomerDAO {
  
  @Autowired
  private SessionFactory sessionFactory;
  
  public void save(Customer customer) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.persist(customer);
    tx.commit();
    session.close();
  }
  
  public void update(Customer customer) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.update(customer);
    tx.commit();
    session.close();
  }
  
  public List<Customer> findAll() {
    Session session = this.sessionFactory.openSession();
    List<Customer> result = session.createQuery("FROM Customer", Customer.class).getResultList();
    session.close();
    return result;
  }
  
  public Customer findById(int id) {
    Session session = this.sessionFactory.openSession();
    Customer model = session.find(Customer.class, id);
    session.close();
    return model;
  }
  
  public void delete(Customer customer) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.delete(customer);
    tx.commit();
    session.close();
  }
}