package com.ertiam.service;

import com.ertiam.domain.Account;
import com.ertiam.domain.Course;
import com.ertiam.domain.StudentInformation;

import java.io.IOException;
import java.util.List;

public interface AccountService {
    public List<Account> login(Account account) throws IOException;
    public List<Course> findAllCourse() throws IOException;
    public StudentInformation selectStuById(int student_id) throws IOException;
    public Course selectCourseById(int course_id) throws IOException;
    public List<Course> checkSelectedCourse(int student_id) throws IOException;
    public List<Course> checkFinishedCourse(int student_id) throws IOException;
    public String selectCourse(int student_id, int course_id) throws IOException;
    public String quitCourse(int student_id, int course_id) throws IOException;
    public List<Course> searchCourse(String course_name) throws IOException;
}
