package com.example.demo.controller;

import com.example.demo.entity.LoanContract;
import com.example.demo.service.LoanContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/loan-contracts")
public class LoanContractController {
    @Autowired
    private LoanContractService loanContractService;

    @GetMapping("/{contractId}")
    public LoanContract getLoanContractById(@PathVariable Long contractId) {
        return loanContractService.getLoanContractById(contractId);
    }

    @PostMapping
    public void createLoanContract(@RequestBody LoanContract loanContract) {
        loanContractService.createLoanContract(loanContract);
    }

    @PutMapping("/{contractId}")
    public void updateLoanContract(@PathVariable Long contractId, @RequestBody LoanContract loanContract) {
        loanContract.setId(contractId);
        loanContractService.updateLoanContract(loanContract);
    }

    @DeleteMapping("/{contractId}")
    public void deleteLoanContract(@PathVariable Long contractId) {
        loanContractService.deleteLoanContract(contractId);
    }

    @GetMapping
    public List<LoanContract> getAllLoanContracts() {
        return loanContractService.getAllLoanContracts();
    }
}
