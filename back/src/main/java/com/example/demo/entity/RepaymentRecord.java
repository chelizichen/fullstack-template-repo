package com.example.demo.entity;

import lombok.*;

import java.math.BigDecimal;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RepaymentRecord {
    private Long id;
    private Long contractId;
    private Long userId;
    private BigDecimal repaymentAmount;
    private String repaymentDate;
    private String repaymentMethod;

    // left join
    private String username;
    // Getters and setters
}
