package com.example.demo.entity;

import lombok.*;

import java.math.BigDecimal;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class LoanApplication {
    private Long id;
    private Long userId;
    private BigDecimal loanAmount;
    private int loanTerm;
    private BigDecimal loanInterestRate;
    private String applicationDate;
    private String status;

    // Getters and setters
}
