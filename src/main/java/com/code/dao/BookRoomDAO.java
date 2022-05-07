package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code.model.BookRoom;

@Repository(value = "bookRoomDAO")
public class BookRoomDAO {
  
  @Autowired
  private SessionFactory sessionFactory;
  
  public void save(BookRoom bookRoom) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.persist(bookRoom);
    tx.commit();
    session.close();
  }
  
  public void update(BookRoom bookRoom) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.update(bookRoom);
    tx.commit();
    session.close();
  }
  
  public List<BookRoom> findAll() {
    Session session = this.sessionFactory.openSession();
    List<BookRoom> result = session.createQuery("FROM BookRoom", BookRoom.class).getResultList();
    session.close();
    return result;
  }
  
  public BookRoom findById(int id) {
    Session session = this.sessionFactory.openSession();
    BookRoom model = session.find(BookRoom.class, id);
    session.close();
    return model;
  }
  
  public void delete(BookRoom bookRoom) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.delete(bookRoom);
    tx.commit();
    session.close();
  }
}