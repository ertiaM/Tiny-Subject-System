package com.ertiam.domain;

import java.util.List;

public class StudentInformation {
    private int student_id;
    private String password;
    private String name;
    private int student_grade;
    private int total_credit;
    private int selected_credit;
    private String major;


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public int getStudent_grade() {
        return student_grade;
    }

    public void setStudent_grade(int student_grade) {
        this.student_grade = student_grade;
    }

    public int getTotal_credit() {
        return total_credit;
    }

    public void setTotal_credit(int total_credit) {
        this.total_credit = total_credit;
    }

    public int getSelected_credit() {
        return selected_credit;
    }

    public void setSelected_credit(int selected_credit) {
        this.selected_credit = selected_credit;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

}
