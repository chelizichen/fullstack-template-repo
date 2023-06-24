package com.example.demo.controller;

import com.example.demo.entity.LoanContract;
import com.example.demo.service.LoanContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

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
    public List<LoanContract> getAllLoanContracts(@RequestParam
    Map<String,Object> attribute) {
        System.out.println(attribute);
        String keyword = (String) attribute.get("keyword");
        String offset = (String) attribute.get("offset");
        String size = (String) attribute.get("size");
        return loanContractService.getAllLoanContracts(offset,size,keyword);
    }
    @GetMapping("total")
    public List<Object> getTotal(@RequestParam Map<String,Object> attribute) {
        System.out.println(attribute);
        String keyword = (String) attribute.get("keyword");
        return loanContractService.getTotal(keyword);
    }

}
