package fr.iut.elearning.service;

import fr.iut.elearning.model.User;

public interface UserService {
	
	public User create(User user);
	public User delete(int id);
	public java.util.List<User> findAll();
	public User update(User user);
	public User findById(int id);
}
