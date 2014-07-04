package fr.iut.elearning.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Student {

	@Id
	@Column(name = "id_student")
	@GeneratedValue
	private int id_student;
	
	@Column(name = "firstName_student")
	private String firstName_student;

	@Column(name = "lastName_student")
	private String lastName_student;

	@Column(name = "idUser")
	private int idUser;
	
	public Student(){
		
	}

	public int getIdUser() {
		return idUser;
	}
	
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	
	public int getId() {
		return id_student;
	}

	public void setId(int id) {
		this.id_student = id;
	}

	public String getFirstName() {
		return firstName_student;
	}

	public void setFirstName(String firstName) {
		this.firstName_student = firstName;
	}

	public String getLastName() {
		return lastName_student;
	}

	public void setLastName(String lastName) {
		this.lastName_student = lastName;
	}
	
	
}
