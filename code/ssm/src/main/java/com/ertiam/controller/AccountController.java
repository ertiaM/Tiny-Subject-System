package com.ertiam.controller;

import com.ertiam.domain.Account;
import com.ertiam.domain.Course;
import com.ertiam.domain.StudentInformation;
import com.ertiam.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/account")
public class AccountController {
    public Account account1;
    @Autowired
    private AccountService accountService;

    @RequestMapping("/login")
    public String login(Account account, HttpSession session) throws IOException {
        account1 = account;
        List<Account> login_account = accountService.login(account);
        if(login_account==null){
            return "login";
        }
        else{
            String userpass = login_account.get(0).getPassword();
            session.setAttribute("username", userpass);
            return "Background";
        }
    }

    @RequestMapping("/findAllCourse")
    public ModelAndView findAllCourse() throws IOException {
        int student_id = account1.getId();
        StudentInformation studentInfo = accountService.selectStuById(student_id);
        List<Course> courseList = accountService.findAllCourse();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("stuInformation", studentInfo);
        modelAndView.addObject("courseList", courseList);
        modelAndView.setViewName("courseList");
        return modelAndView;
    }

    @RequestMapping("/studentInfo")
    public ModelAndView studentInfo() throws IOException {
        int student_id = account1.getId();
        StudentInformation studentInfo = accountService.selectStuById(student_id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("studentInfo", studentInfo);
        modelAndView.setViewName("studentInfo");
        return modelAndView;
    }

    @RequestMapping("/checkSelectedCourse")
    public ModelAndView checkSelectedCourse() throws IOException {
        int student_id = account1.getId();
        List<Course> selectedCourse = accountService.checkSelectedCourse(student_id);
        StudentInformation studentInfo = accountService.selectStuById(student_id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("info", "These are the courses you have selected");
        modelAndView.addObject("stuInformation", studentInfo);
        modelAndView.addObject("selectedCourseList", selectedCourse);
        modelAndView.setViewName("selectedCourseList");
        return modelAndView;
    }


    @RequestMapping("/checkFinishedCourse")
    public ModelAndView checkFinishedCourse() throws IOException {
        int student_id = account1.getId();
        List<Course> finishedCourse = accountService.checkFinishedCourse(student_id);
        StudentInformation studentInfo = accountService.selectStuById(student_id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("stuInformation", studentInfo);
        modelAndView.addObject("finishedCourseList", finishedCourse);
        modelAndView.setViewName("finishedCourseList");
        return modelAndView;
    }

    @RequestMapping("/selectCourse")
    public ModelAndView selectCourse(int course_id) throws IOException{
        int student_id = account1.getId();
        String info = accountService.selectCourse(student_id, course_id);
        List<Course> selectedCourse = accountService.checkSelectedCourse(student_id);
        StudentInformation studentInfo = accountService.selectStuById(student_id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("info", info);
        modelAndView.addObject("stuInformation", studentInfo);
        modelAndView.addObject("selectedCourseList", selectedCourse);
        modelAndView.setViewName("selectedCourseList");
        return modelAndView;
    }

    @RequestMapping("/quitCourse")
    public ModelAndView quitCourse(int course_id) throws IOException{
        int student_id = account1.getId();
        String info = accountService.quitCourse(student_id, course_id);
        List<Course> selectedCourse = accountService.checkSelectedCourse(student_id);
        StudentInformation studentInfo = accountService.selectStuById(student_id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("info", info);
        modelAndView.addObject("stuInformation", studentInfo);
        modelAndView.addObject("selectedCourseList", selectedCourse);
        modelAndView.setViewName("selectedCourseList");
        return modelAndView;
    }

    @RequestMapping("/search")
    public ModelAndView search(String course_name) throws IOException{
        int student_id = account1.getId();
        course_name = "\"%"+course_name+"%\"";
        StudentInformation studentInfo = accountService.selectStuById(student_id);
        List<Course> searchCourse = accountService.searchCourse(course_name);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("stuInformation", studentInfo);
        modelAndView.addObject("courseList", searchCourse);
        modelAndView.setViewName("courseList");
        return modelAndView;
    }

    @RequestMapping("/exit")
    public String exit(HttpServletRequest request){
        request.getSession().invalidate();
        return "login";
    }
}
