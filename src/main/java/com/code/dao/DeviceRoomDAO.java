package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code.model.DeviceRoom;

@Repository(value = "deviceRoomDAO")
public class DeviceRoomDAO {
  
  @Autowired
  private SessionFactory sessionFactory;
  
  public void save(DeviceRoom deviceRoom) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.persist(deviceRoom);
    tx.commit();
    session.close();
  }
  
  public void update(DeviceRoom deviceRoom) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.update(deviceRoom);
    tx.commit();
    session.close();
  }
  
  public List<DeviceRoom> findAll() {
    Session session = this.sessionFactory.openSession();
    List<DeviceRoom> result = session.createQuery("FROM DeviceRoom", DeviceRoom.class).getResultList();
    return result;
  }
  
  public DeviceRoom findById(int id) {
    Session session = this.sessionFactory.openSession();
    return session.find(DeviceRoom.class, id);
  }
  
  public void delete(DeviceRoom deviceRoom) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.delete(deviceRoom);
    tx.commit();
    session.close();
  }
}