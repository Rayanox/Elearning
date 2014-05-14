package fr.iut.elearning.model;

public class TeacherSubjectModel {

	private int id;
	private int teacherSubject;
	private int subjectId;
	
	public TeacherSubjectModel() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTeacherSubject() {
		return teacherSubject;
	}

	public void setTeacherSubject(int teacherSubject) {
		this.teacherSubject = teacherSubject;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
	
}
