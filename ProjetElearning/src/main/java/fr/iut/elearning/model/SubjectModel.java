package fr.iut.elearning.model;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Service;

@Service
public class SubjectModel {
	
	@Id
	@GeneratedValue
	private int id;
	private String subjectName;
	
	public SubjectModel(){
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	
}
