package com.example.demo.controller;

import com.example.demo.entity.LoanApplication;
import com.example.demo.service.LoanApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.util.List;
import java.util.Map;

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
    public List<LoanApplication> getAllLoanApplications(@RequestParam Map<String,Object> attribute) {
        System.out.println(attribute);
        String keyword = (String) attribute.get("keyword");
        String offset = (String) attribute.get("offset");
        String size = (String) attribute.get("size");
        return loanApplicationService.getAllLoanApplications(offset,size,keyword);
    }

    @GetMapping("total")
    public List<Object> getTotal(@RequestParam Map<String,Object> attribute) {
        System.out.println(attribute);
        String keyword = (String) attribute.get("keyword");
        return loanApplicationService.getTotal(keyword);
    }

}
