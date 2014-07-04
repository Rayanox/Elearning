package fr.iut.elearning;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.json.simple.JSONObject;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;

import fr.iut.elearning.model.CoursePlanning;
import fr.iut.elearning.model.Room;
import fr.iut.elearning.model.Course;
import fr.iut.elearning.model.Teacher;
import fr.iut.elearning.service.CoursePlanningService;
import fr.iut.elearning.service.CourseService;
import fr.iut.elearning.service.RoomService;
import fr.iut.elearning.service.TeacherService;

@RunWith(MockitoJUnitRunner.class)
public class DashBoardTest {

	@Mock TeacherService teacherService;
	
	@Test
	public void testGetTeacherById() {


		when(teacherService.findById(1)).thenReturn(
				new Teacher(1, "Chuck", "Norris"));

		DashBoard dashBoard = new DashBoard(teacherService);

		Model model = new ExtendedModelMap();

		String view = dashBoard.getTeacherById(1, model);

		assertEquals("View name", "DashBoard", view);

		Teacher teacher = (Teacher) model.asMap().get("teacherData");

		assertEquals("matching ID", 1, teacher.getId());
		assertEquals("matching Name", "Chuck", teacher.getFirstName());

	}
/*
	@Test
	public void testGetRooms() {

		RoomService roomService = mock(RoomService.class);

		List<Room> rooms = new ArrayList<Room>();

		Room room1 = new Room(1, "A002", "A", 30);
		Room room2 = new Room(2, "A104", "A", 20);
		rooms.add(room1);
		rooms.add(room2);

		when(roomService.findAll()).thenReturn(rooms);

		DashBoard dashBoard = new DashBoard(roomService);
		
		Model model = new ExtendedModelMap();
		MockHttpSession mockSession = new MockHttpSession();
		Locale locale = null;
		
		List<Room> result = dashBoard.getRooms(locale, model, mockSession);

		assertEquals("matching ID", 1, result.get(0).getId());
		assertEquals("matching Name", "A", result.get(0).getBuilding());
	}
	
	@Test
	public void testGetSubject() {

		CourseService courseService = mock(CourseService.class);

		List<Course> courses = new ArrayList<Course>();

		Course course1 = new Course(1, "Maths");
		Course course2 = new Course(2, "Anglais");
		courses.add(course1);
		courses.add(course2);

		when(courseService.findAll()).thenReturn(courses);

		DashBoard dashBoard = new DashBoard(courseService);
		
		Model model = new ExtendedModelMap();
		MockHttpSession mockSession = new MockHttpSession();
		Locale locale = null;
		
		List<Course> result = dashBoard.getSubject(locale, model, mockSession);

		assertEquals("matching ID", 1, result.get(0).getId());
		assertEquals("matching Name", "Maths", result.get(0).getNameCourse());
	}*/

}
