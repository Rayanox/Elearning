package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.RoomDao;
import fr.iut.elearning.model.Room;

@Service
public class RoomServiceImpl implements RoomService{

	@Resource
	private RoomDao roomDao;
	
	@Override
	@Transactional
	public Room create(Room room) {
		Room createdRoom = room;
		return roomDao.save(createdRoom);
	}

	@Override
	@Transactional
	public Room delete(int id) {
		Room deletedRoom = roomDao.findOne(id);

		roomDao.delete(deletedRoom);
		return deletedRoom;
	}

	@Override
	@Transactional
	public List<Room> findAll() {
		return roomDao.findAll();
	}

	@Override
	@Transactional
	public Room update(Room room) {
		Room updatedRoom = roomDao.findOne(room.getId());

		updatedRoom.setNameRoom(room.getNameRoom());
		updatedRoom.setBuilding(room.getBuilding());
		updatedRoom.setCapacity(room.getCapacity());
		return updatedRoom;
	}

	@Override
	@Transactional
	public Room findById(int id) {
		return roomDao.findOne(id);
	}

}
