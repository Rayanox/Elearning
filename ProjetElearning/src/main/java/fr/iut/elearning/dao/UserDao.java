package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.User;

public interface UserDao extends JpaRepository<User, Integer>{

}
