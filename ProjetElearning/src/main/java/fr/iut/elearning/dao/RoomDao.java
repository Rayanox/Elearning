package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.RoomModel;

public interface RoomDao extends JpaRepository<RoomModel, Integer>{

}
