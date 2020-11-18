package com.example.hms.springboothms.controller;

import com.example.hms.springboothms.ResourceNotFoundException;
import com.example.hms.springboothms.model.Leave;
import com.example.hms.springboothms.repository.LeaveRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api")
public class LeaveController {
    @Autowired
    private LeaveRepository leaveRepository;

    @PostMapping("/leaves")
    public Leave addLeave(@RequestBody Leave leave) {
        return leaveRepository.save(leave);
    }

    @GetMapping("/leaves")
    public ResponseEntity<List<Leave>> getAllLeaves() {

        return ResponseEntity.ok(leaveRepository.findAll());
    }

    @GetMapping("/leaves/{id}")
    public ResponseEntity<Leave> getLeaveById(@PathVariable(value = "id") Integer leaveId)
            throws ResourceNotFoundException {
        Leave leave = leaveRepository.findById(leaveId)
                .orElseThrow(() -> new ResourceNotFoundException("Leave not found for this id :: " + leaveId));
        return ResponseEntity.ok().body(leave);
    }

    @PutMapping("/leaves/{id}")
    public ResponseEntity<Leave> updateLeave(@PathVariable(value = "id") Integer leaveId,
            @RequestBody Leave leaveDetails) throws ResourceNotFoundException {
        Leave leave = leaveRepository.findById(leaveId)
                .orElseThrow(() -> new ResourceNotFoundException("Leave not found for this id :: " + leaveId));
        leave.setUsername(leaveDetails.getUsername());
        leave.setName(leaveDetails.getName());
        leave.setStartDate(leaveDetails.getStartDate());
        leave.setEndDate(leaveDetails.getEndDate());
        leave.setStartTime(leaveDetails.getStartTime());
        leave.setEndTime(leaveDetails.getEndTime());

        final Leave updatedLeave = leaveRepository.save(leave);
        return ResponseEntity.ok(updatedLeave);
    }

    @DeleteMapping("/leaves/{id}")
    public Map<String, Boolean> deleteLeave(@PathVariable(value = "id") Integer leaveId)
            throws ResourceNotFoundException {
        Leave leave = leaveRepository.findById(leaveId)
                .orElseThrow(() -> new ResourceNotFoundException("Leave not found for this id :: " + leaveId));

        leaveRepository.delete(leave);
        Map<String, Boolean> response = new HashMap<>();
        response.put("deleted", Boolean.TRUE);
        return response;
    }
}