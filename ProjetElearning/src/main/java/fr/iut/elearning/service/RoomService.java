package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.Room;

public interface RoomService {

	public Room create(Room room);
	public Room delete(int id);
	public List<Room> findAll();
	public Room update(Room room);
	public Room findById(int id);
}
