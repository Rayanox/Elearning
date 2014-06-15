package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.RoomModel;

public interface RoomService {

	public RoomModel create(RoomModel room);
	public RoomModel delete(int id);
	public List<RoomModel> findAll();
	public RoomModel update(RoomModel room);
	public RoomModel findById(int id);
}
