package com.example.hms.springboothms.model;

import lombok.AllArgsConstructor;

import lombok.NoArgsConstructor;

import javax.persistence.*;

@NoArgsConstructor
@AllArgsConstructor
@Table
@Entity
public class Services {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int serviceID;
    private String serviceDescription;
    private String category;

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public String getServiceDescription() {
        return serviceDescription;
    }

    public void setServiceDescription(String serviceDescription) {
        this.serviceDescription = serviceDescription;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

}
