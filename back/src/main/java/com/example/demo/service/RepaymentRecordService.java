package com.example.demo.service;

import com.example.demo.entity.RepaymentRecord;
import com.example.demo.mapper.RepaymentRecordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RepaymentRecordService {
    @Autowired
    private RepaymentRecordMapper repaymentRecordMapper;

    public RepaymentRecord getRepaymentRecordById(Long recordId) {
        return repaymentRecordMapper.getRepaymentRecordById(recordId);
    }

    public void createRepaymentRecord(RepaymentRecord repaymentRecord) {
        // Perform any necessary validations or business logic
        repaymentRecordMapper.insertRepaymentRecord(repaymentRecord);
    }

    public void updateRepaymentRecord(RepaymentRecord repaymentRecord) {
        // Perform any necessary validations or business logic
        repaymentRecordMapper.updateRepaymentRecord(repaymentRecord);
    }

    public void deleteRepaymentRecord(Long recordId) {
        // Perform any necessary validations or business logic
        repaymentRecordMapper.deleteRepaymentRecord(recordId);
    }
    public List<RepaymentRecord> getAllRepaymentRecords(String offset,String size,String keyword) {
        return repaymentRecordMapper.getAllRepaymentRecords(offset, size, keyword);
    }
    public List<Object> getTotal(String keyword){
        return repaymentRecordMapper.getTotal(keyword);
    }
}
