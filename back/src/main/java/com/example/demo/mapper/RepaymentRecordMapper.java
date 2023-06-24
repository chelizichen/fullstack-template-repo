package com.example.demo.mapper;
import com.example.demo.entity.RepaymentRecord;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Mapper
@Repository
public interface RepaymentRecordMapper {
    void insertRepaymentRecord(RepaymentRecord repaymentRecord);
    void updateRepaymentRecord(RepaymentRecord repaymentRecord);
    void deleteRepaymentRecord(Long repaymentRecordId);
    RepaymentRecord getRepaymentRecordById(Long repaymentRecordId);
    List<RepaymentRecord> getAllRepaymentRecords(            @Param("offset") String offset,
                                                             @Param("size") String size,
                                                             @Param("keyword") String keyword);
    List<Object> getTotal( @Param("keyword") String keyword);

}
