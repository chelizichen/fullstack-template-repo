package com.example.demo.controller;

import com.example.demo.entity.RepaymentRecord;
import com.example.demo.service.RepaymentRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/repayment-records")
class RepaymentRecordController {
    @Autowired
    private RepaymentRecordService repaymentRecordService;

    @GetMapping("/{recordId}")
    public RepaymentRecord getRepaymentRecordById(@PathVariable Long recordId) {
        return repaymentRecordService.getRepaymentRecordById(recordId);
    }

    @PostMapping
    public void createRepaymentRecord(@RequestBody RepaymentRecord repaymentRecord) {
        repaymentRecordService.createRepaymentRecord(repaymentRecord);
    }

    @PutMapping("/{recordId}")
    public void updateRepaymentRecord(@PathVariable Long recordId, @RequestBody RepaymentRecord repaymentRecord) {
        repaymentRecord.setId(recordId);
        repaymentRecordService.updateRepaymentRecord(repaymentRecord);
    }

    @DeleteMapping("/{recordId}")
    public void deleteRepaymentRecord(@PathVariable Long recordId) {
        repaymentRecordService.deleteRepaymentRecord(recordId);
    }

    @GetMapping
    public List<RepaymentRecord> getAllRepaymentRecords() {
        return repaymentRecordService.getAllRepaymentRecords();
    }
}
