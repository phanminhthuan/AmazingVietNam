package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.code.model.Device;

@Repository(value = "deviceDAO")
public class DeviceDAO {
  
  @Autowired
  private SessionFactory sessionFactory;
  
  public void save(Device device) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.persist(device);
    tx.commit();
    session.close();
  }
  
  public void update(Device device) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.update(device);
    tx.commit();
    session.close();
  }
  
  public List<Device> findAll() {
    Session session = this.sessionFactory.openSession();
    List<Device> result = session.createQuery("FROM Device", Device.class).getResultList();
    session.close();
    return result;
  }
  
  public Device findById(int id) {
    Session session = this.sessionFactory.openSession();
    Device model = session.find(Device.class, id);
    session.close();
    return model;
  }
  
  public void delete(Device device) {
    Session session = this.sessionFactory.openSession();
    Transaction tx = session.beginTransaction();
    session.delete(device);
    tx.commit();
    session.close();
  }
}