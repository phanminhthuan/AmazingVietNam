package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code.model.RoomType;

@Repository(value = "roomTypeDAO")
public class RoomTypeDAO {
  
  @Autowired
  private SessionFactory sessionFactory;
  
  public void save(RoomType roomType) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.persist(roomType);
    tx.commit();
    session.close();
  }
  
  public void update(RoomType roomType) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.update(roomType);
    tx.commit();
    session.close();
  }
  
  public List<RoomType> findAll() {
    Session session = this.sessionFactory.openSession();
    List<RoomType> result = session.createQuery("FROM room_types", RoomType.class).getResultList();
    return result;
  }
  
  public RoomType findById(int id) {
    Session session = this.sessionFactory.openSession();
    return session.find(RoomType.class, id);
  }
  
  public void delete(RoomType roomType) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.delete(roomType);
    tx.commit();
    session.close();
  }
}