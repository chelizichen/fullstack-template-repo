package com.example.demo.service;

import com.example.demo.entity.LoanContract;
import com.example.demo.mapper.LoanContractMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoanContractService {
    @Autowired
    private LoanContractMapper loanContractMapper;

    public LoanContract getLoanContractById(Long contractId) {
        return loanContractMapper.getLoanContractById(contractId);
    }

    public void createLoanContract(LoanContract loanContract) {
        // Perform any necessary validations or business logic
        loanContractMapper.insertLoanContract(loanContract);
    }

    public void updateLoanContract(LoanContract loanContract) {
        // Perform any necessary validations or business logic
        loanContractMapper.updateLoanContract(loanContract);
    }

    public void deleteLoanContract(Long contractId) {
        // Perform any necessary validations or business logic
        loanContractMapper.deleteLoanContract(contractId);
    }
    public List<LoanContract> getAllLoanContracts(String offset,String size,String keyword) {
        return loanContractMapper.getAllLoanContracts(offset, size, keyword);
    }
    public List<Object> getTotal(String keyword){
        return loanContractMapper.getTotal(keyword);
    }
}
