package com.example.demo.mapper;
import com.example.demo.entity.LoanContract;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Mapper
@Repository
public interface LoanContractMapper {
    void insertLoanContract(LoanContract loanContract);
    void updateLoanContract(LoanContract loanContract);
    void deleteLoanContract(Long loanContractId);
    LoanContract getLoanContractById(Long loanContractId);
    List<LoanContract> getAllLoanContracts(            @Param("offset") String offset,
                                                       @Param("size") String size,
                                                       @Param("keyword") String keyword);
    List<Object> getTotal( @Param("keyword") String keyword);

}
