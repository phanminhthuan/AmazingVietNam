package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code.model.Location;

@Repository(value = "locationDAO")
public class LocationDAO {
  
  @Autowired
  private SessionFactory sessionFactory;
  
  public void save(Location location) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.persist(location);
    tx.commit();
    session.close();
  }
  
  public void update(Location location) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.update(location);
    tx.commit();
    session.close();
  }
  
  public List<Location> findAll() {
    Session session = this.sessionFactory.openSession();
    List<Location> result = session.createQuery("FROM Location", Location.class).getResultList();
    session.close();
    return result;
  }
  
  public List<Location> findByName(String name) {
    Session session = this.sessionFactory.openSession();
    List<Location> result = session.createQuery("FROM Location where name = :name", Location.class)
    .setParameter("name", name).getResultList();
    session.close();
    return result;
  }
  
  public Location findById(int id) {
    Session session = this.sessionFactory.openSession();
    Location model = session.find(Location.class, id);
    return model;
  }
}