package fr.iut.elearning;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

import org.junit.Test;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;

import fr.iut.elearning.model.Teacher;
import fr.iut.elearning.service.TeacherService;

public class DashBoardTest{
	
	@Test
	public void testTeacherById() {
		
		TeacherService teacherService = mock(TeacherService.class);
		 
        when(teacherService.findById(1)).thenReturn(new Teacher(1, "Chuck", "Norris"));
 
        DashBoard dashBoard = new DashBoard(teacherService);
 
        Model model = new ExtendedModelMap();
 
        String view = dashBoard.getTeacherById(1, model);
 
        assertEquals("View name", "DashBoard", view);
 
        Teacher teacher = (Teacher) model.asMap().get("teacherData");
 
        assertEquals("matching ID", 1, teacher.getId());
        assertEquals("matching Name", "Chuck", teacher.getFirstName());

	}

}
