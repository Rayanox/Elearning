package fr.iut.elearning.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.UserDao;
import fr.iut.elearning.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;
	
	@Override
	@Transactional
	public User create(User user) {
		User createdUser = user;
		return userDao.save(createdUser);
	}

	@Override
	@Transactional
	public User delete(int id){
		User deletedUser = userDao.findOne(id);

		userDao.delete(deletedUser);
		return deletedUser;
	}

	@Override
	@Transactional
	public java.util.List<User> findAll() {
		return userDao.findAll();
	}

	@Override
	@Transactional
	public User update(User user) {
		User updatedUser = userDao.findOne(user.getId());

		updatedUser.setFirstName(user.getFirstName());
		updatedUser.setLastName(user.getLastName());
		updatedUser.setEmail(user.getEmail());
		return updatedUser;
	}

	@Override
	@Transactional
	public User findById(int id) {
		return userDao.findOne(id);
	}

}
