package com.example.demo.controller;

import com.example.demo.entity.LoanApplication;
import com.example.demo.service.LoanApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/loan-applications")
public class LoanApplicationController {
    @Autowired
    private LoanApplicationService loanApplicationService;

    @GetMapping("/{applicationId}")
    public LoanApplication getLoanApplicationById(@PathVariable Long applicationId) {
        return loanApplicationService.getLoanApplicationById(applicationId);
    }

    @PostMapping
    public void createLoanApplication(@RequestBody LoanApplication loanApplication) {
        loanApplicationService.createLoanApplication(loanApplication);
    }

    @PutMapping("/{applicationId}")
    public void updateLoanApplication(@PathVariable Long applicationId, @RequestBody LoanApplication loanApplication) {
        loanApplication.setId(applicationId);
        loanApplicationService.updateLoanApplication(loanApplication);
    }

    @DeleteMapping("/{applicationId}")
    public void deleteLoanApplication(@PathVariable Long applicationId) {
        loanApplicationService.deleteLoanApplication(applicationId);
    }
    @GetMapping
    public List<LoanApplication> getAllLoanApplications() {
        return loanApplicationService.getAllLoanApplications();
    }

}
