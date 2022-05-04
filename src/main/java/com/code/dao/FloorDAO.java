package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code.model.Floor;

@Repository(value = "floorDAO")
public class FloorDAO {
  
  @Autowired
  private SessionFactory sessionFactory;
  
  public void save(Floor floor) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.persist(floor);
    tx.commit();
    session.close();
  }
  
  public void update(Floor floor) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.update(floor);
    tx.commit();
    session.close();
  }
  
  public List<Floor> findAll() {
    Session session = this.sessionFactory.openSession();
    List<Floor> result = session.createQuery("FROM floors", Floor.class).getResultList();
    return result;
  }
  
  public Floor findById(int id) {
    Session session = this.sessionFactory.openSession();
    return session.find(Floor.class, id);
  }
  
  public void delete(Floor floor) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.delete(floor);
    tx.commit();
    session.close();
  }
}