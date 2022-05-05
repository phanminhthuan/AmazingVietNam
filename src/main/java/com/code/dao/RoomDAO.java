package com.code.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.code.model.Hotel;
import com.code.model.Room;

@Repository(value = "roomDAO")
public class RoomDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void save(Room room) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(room);
		tx.commit();
		session.close();
	}

	public void update(Room room) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(room);
		tx.commit();
		session.close();
	}

	public List<Room> findAll() {
		Session session = this.sessionFactory.openSession();
		List<Room> result = session.createQuery("FROM Room", Room.class).getResultList();
		return result;
	}

	public List<Room> findByHotelId(int hotelId) {
		Session session = this.sessionFactory.openSession();
		List<Room> result = session.createQuery("FROM Room where hotel_id = :hotel_id", Room.class)
				.setParameter("hotel_id", hotelId).getResultList();
		return result;
	}

	public Room findById(int id) {
		Session session = this.sessionFactory.openSession();
		return session.find(Room.class, id);
	}

	public void delete(Room room) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.delete(room);
		tx.commit();
		session.close();
	}
}