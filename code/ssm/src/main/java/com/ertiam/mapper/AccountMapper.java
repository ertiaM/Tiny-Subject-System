package com.ertiam.mapper;

import com.ertiam.domain.*;
import org.apache.ibatis.annotations.Param;

import java.io.IOException;
import java.util.List;

public interface AccountMapper {

    public List<Account> login(Account account);
    public List<Course> findAllCourse();
    public StudentInformation selectStuById(int student_id);
    public Course selectCourseById(int course_id) throws IOException;
    public List<PreRequire> checkPreRequired(int course_id) throws IOException;
    public List<Course> checkSelectedCourse(int student_id) throws IOException;
    public List<Course> checkFinishedCourse(int student_id) throws IOException;
    public void selectCourse(CourseSelect courseSelect) throws IOException;
    public void quitCourse(CourseSelect courseSelect) throws IOException;
    public List<Course> searchCourse(@Param("course_name") String course_name) throws IOException;
}
