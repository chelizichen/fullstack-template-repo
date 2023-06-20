package com.example.demo.entity;

import lombok.*;

import java.math.BigDecimal;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class LoanContract {
    private Long id;
    private Long applicationId;
    private Long userId;
    private BigDecimal contractAmount;
    private int contractTerm;
    private String repaymentSchedule;
    private String signingDate;
    private String status;

    // Getters and setters
}
