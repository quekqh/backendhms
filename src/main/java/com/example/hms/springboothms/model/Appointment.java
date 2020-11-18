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
public class Appointment {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int appointmentId;
    private String username;
    private String customerName;
    private int customerPhone;
    private Date appointmentDate;
    private Time appointmentTime;
    private Time apptEndTime;
    private String status;
    private String services;

    public Appointment(int appointmentId, String username, String customerName, int customerPhone, Date appointmentDate,
            Time appointmentTime, Time apptEndTime, String remarks, String status, String services) {
        this.appointmentId = appointmentId;
        this.username = username;
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.appointmentDate = appointmentDate;
        this.appointmentTime = appointmentTime;
        this.apptEndTime = apptEndTime;
        this.status = status;
        this.services = services;
    }

    public int getAppointmentId() {
        return appointmentId;
    }

    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public int getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(int customerPhone) {
        this.customerPhone = customerPhone;
    }

    public Date getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(Date appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public Time getAppointmentTime() {
        return appointmentTime;
    }

    public void setAppointmentTime(Time appointmentTime) {
        this.appointmentTime = appointmentTime;
    }

    public Time getApptEndTime() {
        return apptEndTime;
    }

    public void setApptEndTime(Time apptEndTime) {
        this.apptEndTime = apptEndTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getServices() {
        return services;
    }

    public void setServices(String services) {
        this.services = services;
    }
}