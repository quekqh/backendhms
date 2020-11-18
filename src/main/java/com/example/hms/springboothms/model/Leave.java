package com.example.hms.springboothms.model;

import lombok.AllArgsConstructor;

import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.*;

@NoArgsConstructor
@AllArgsConstructor
@Table
@Entity
public class Leave {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int leaveID;
    private String username;
    private String name;
    private Date startDate;
    private Date endDate;
    private Time startTime;
    private Time endTime;

    public int getLeaveID() {
        return leaveID;
    }

    public void setLeaveID(int leaveID) {
        this.leaveID = leaveID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Time getStartTime() {
        return startTime;
    }

    public void setStartTime(Time startTime) {
        this.startTime = startTime;
    }

    public Time getEndTime() {
        return endTime;
    }

    public void setEndTime(Time endTime) {
        this.endTime = endTime;
    }
}
