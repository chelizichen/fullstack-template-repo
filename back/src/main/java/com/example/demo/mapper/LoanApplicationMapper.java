package com.example.demo.mapper;

import com.example.demo.entity.LoanApplication;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface LoanApplicationMapper {
    void insertLoanApplication(LoanApplication loanApplication);
    void updateLoanApplication(LoanApplication loanApplication);
    void deleteLoanApplication(Long loanApplicationId);
    LoanApplication getLoanApplicationById(Long loanApplicationId);
    List<LoanApplication> getAllLoanApplications();
}
