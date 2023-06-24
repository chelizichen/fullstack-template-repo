package com.example.demo.mapper;

import com.example.demo.entity.LoanApplication;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface LoanApplicationMapper {
    void insertLoanApplication(LoanApplication loanApplication);
    void updateLoanApplication(LoanApplication loanApplication);
    void deleteLoanApplication(Long loanApplicationId);
    LoanApplication getLoanApplicationById(Long loanApplicationId);
    List<LoanApplication> getAllLoanApplications(
            @Param("offset") String offset,
            @Param("size") String size,
            @Param("keyword") String keyword);
    List<Object> getTotal( @Param("keyword") String keyword);
}
