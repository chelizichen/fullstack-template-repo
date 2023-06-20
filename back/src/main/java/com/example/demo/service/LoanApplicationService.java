package com.example.demo.service;

import com.example.demo.entity.LoanApplication;
import com.example.demo.mapper.LoanApplicationMapper;
import org.apache.ibatis.javassist.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoanApplicationService {
    @Autowired
    private LoanApplicationMapper loanApplicationMapper;

    public LoanApplication getLoanApplicationById(Long applicationId) {
        return loanApplicationMapper.getLoanApplicationById(applicationId);
    }

    public void createLoanApplication(LoanApplication loanApplication) {
        // Perform any necessary validations or business logic
        loanApplicationMapper.insertLoanApplication(loanApplication);
    }

    public void updateLoanApplication(LoanApplication loanApplication) {
        // Perform any necessary validations or business logic
        loanApplicationMapper.updateLoanApplication(loanApplication);
    }

    public void deleteLoanApplication(Long applicationId) {
        // Perform any necessary validations or business logic
        loanApplicationMapper.deleteLoanApplication(applicationId);
    }

    public List<LoanApplication> getAllLoanApplications() {
        return loanApplicationMapper.getAllLoanApplications();
    }
}
