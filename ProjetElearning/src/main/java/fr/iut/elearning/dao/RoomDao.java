package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.Room;

public interface RoomDao extends JpaRepository<Room, Integer>{

}
