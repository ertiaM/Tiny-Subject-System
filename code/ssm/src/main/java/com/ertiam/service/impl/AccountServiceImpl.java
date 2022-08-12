package com.ertiam.service.impl;

import com.ertiam.domain.*;
import com.ertiam.mapper.AccountMapper;
import com.ertiam.service.AccountService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Service("accountService")
public class AccountServiceImpl implements AccountService {

    @Override
    public List<Account> login(Account account) throws IOException {
        InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
        List<Account> login_account = mapper.login(account);
        sqlSession.commit();
        sqlSession.close();

        if(!login_account.isEmpty() && login_account.get(0).getPassword().equals(account.getPassword())){
            return login_account;
        }
        return null;
    }

    @Override
    public List<Course> findAllCourse() throws IOException {
        InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
        List<Course> courseList = mapper.findAllCourse();
        sqlSession.commit();
        sqlSession.close();
        return courseList;
    }

    @Override
    public StudentInformation selectStuById(int student_id) throws IOException {
        InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
        StudentInformation stu = mapper.selectStuById(student_id);
        sqlSession.commit();
        sqlSession.close();
        return stu;
    }

    @Override
    public Course selectCourseById(int course_id) throws IOException {
        InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
        Course course = mapper.selectCourseById(course_id);
        sqlSession.commit();
        sqlSession.close();
        return course;
    }

    @Override
    public List<Course> checkSelectedCourse(int student_id) throws IOException{
        InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
        List<Course> courseList = mapper.checkSelectedCourse(student_id);
        sqlSession.commit();
        sqlSession.close();
        return courseList;
    }

    @Override
    public List<Course> checkFinishedCourse(int student_id) throws IOException{
        InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
        List<Course> courseList = mapper.checkFinishedCourse(student_id);
        sqlSession.commit();
        sqlSession.close();
        return courseList;
    }

    @Override
    public String selectCourse(int student_id, int course_id) throws IOException{
        InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
        List<Course> selectedCourse = mapper.checkSelectedCourse(student_id);
        List<Course> finishedCourse = mapper.checkFinishedCourse(student_id);
        List<PreRequire> pre = mapper.checkPreRequired(course_id);
        boolean flag = false;
        Course course = mapper.selectCourseById(course_id);
        StudentInformation stu = mapper.selectStuById(student_id);
        int remain_credit = stu.getTotal_credit() - stu.getSelected_credit();
        for(int i=0; i<selectedCourse.size(); i++){
            if(course_id == selectedCourse.get(i).getCourse_id()){
                return "The course is selected";
            }
            if(course.getClass_date().equals(selectedCourse.get(i).getClass_date()) && course.getStart_time()==selectedCourse.get(i).getStart_time()){
                return "Time conflict";
            }
        }

        if(remain_credit < course.getCredit()){
            return "No enough credit";
        }

        if(!course.getMajor().equals(stu.getMajor()) && !course.getMajor().equals("all")){
            return "The course is not for your major";
        }

        if(course.getGrade()>stu.getStudent_grade()){
            return "The course is not for your grade";
        }

        if(pre.isEmpty()){
            flag = true;
        }

        for(int i=0; i<finishedCourse.size(); i++){
            if(course_id == finishedCourse.get(i).getCourse_id()){
                return "The course is finished";
            }
            if(pre.isEmpty()){
                flag = true;
                break;
            }
            if(finishedCourse.get(i).getCourse_id() == pre.get(0).getPre_id()){
                flag = true;
            }
        }
        if(flag==false){
            Course preCourse = mapper.selectCourseById(pre.get(0).getPre_id());
            return "You need to finish the pre course " + preCourse.getCourse() + " first";
        }
        CourseSelect courseSelect = new CourseSelect();
        courseSelect.setStudent_id(student_id);
        courseSelect.setCourse_id(course_id);
        mapper.selectCourse(courseSelect);
        sqlSession.commit();
        sqlSession.close();
        return "The course is selected successfully";
    }

    @Override
    public String quitCourse(int student_id, int course_id) throws IOException{
        InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
        CourseSelect courseSelect = new CourseSelect();
        courseSelect.setStudent_id(student_id);
        courseSelect.setCourse_id(course_id);
        mapper.quitCourse(courseSelect);
        sqlSession.commit();
        sqlSession.close();
        return "Quit Course Successfully";
    }

    @Override
    public List<Course> searchCourse(String course_name) throws IOException{
        InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
        List<Course> courseList = mapper.searchCourse(course_name);
        sqlSession.commit();
        sqlSession.close();
        return courseList;
    }

}
