package com.example.hms.springboothms.repository;

import com.example.hms.springboothms.model.Leave;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LeaveRepository extends JpaRepository<Leave, Integer> {
}