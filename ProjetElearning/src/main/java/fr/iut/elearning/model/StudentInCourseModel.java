package fr.iut.elearning.model;

public class StudentInCourseModel {
	
	private int id;
	private int studentId;
	private int courseId;
	
	public StudentInCourseModel() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	

}
