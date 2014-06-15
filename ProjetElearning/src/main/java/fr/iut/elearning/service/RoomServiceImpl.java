package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.RoomDao;
import fr.iut.elearning.model.RoomModel;

@Service
public class RoomServiceImpl implements RoomService{

	@Resource
	private RoomDao roomDao;
	
	@Override
	@Transactional
	public RoomModel create(RoomModel room) {
		RoomModel createdRoom = room;
		return roomDao.save(createdRoom);
	}

	@Override
	@Transactional
	public RoomModel delete(int id) {
		RoomModel deletedRoom = roomDao.findOne(id);

		roomDao.delete(deletedRoom);
		return deletedRoom;
	}

	@Override
	@Transactional
	public List<RoomModel> findAll() {
		return roomDao.findAll();
	}

	@Override
	@Transactional
	public RoomModel update(RoomModel room) {
		RoomModel updatedRoom = roomDao.findOne(room.getId());

		updatedRoom.setNameRoom(room.getNameRoom());
		updatedRoom.setBuilding(room.getBuilding());
		updatedRoom.setCapacity(room.getCapacity());
		return updatedRoom;
	}

	@Override
	@Transactional
	public RoomModel findById(int id) {
		return roomDao.findOne(id);
	}

}
