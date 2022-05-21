package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code.model.Hotel;

@Repository(value = "hotelDAO")
public class HotelDAO {
  
  @Autowired
  private SessionFactory sessionFactory;
  
  public void save(Hotel hotel) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.persist(hotel);
    tx.commit();
    session.close();
  }
  
  public void update(Hotel hotel) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.update(hotel);
    tx.commit();
    session.close();
  }
  
  public List<Hotel> findAll() {
    Session session = this.sessionFactory.openSession();
    List<Hotel> result = session.createQuery("FROM Hotel", Hotel.class).getResultList();
    session.close();
    return result;
  }
  
  public List<Hotel> findByLocationId(int locationId) {
    Session session = this.sessionFactory.openSession();
    List<Hotel> result = session.createQuery("FROM Hotel where location_id = :locationId", Hotel.class)
    .setParameter("locationId", locationId).getResultList();
    session.close();
    return result;
  }
  
  public Hotel findById(int id) {
    Session session = this.sessionFactory.openSession();
    Hotel model = session.find(Hotel.class, id);
    session.close();
    return model;
  }
  
  public void delete(Hotel hotel) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.delete(hotel);
    tx.commit();
    session.close();
  }
}