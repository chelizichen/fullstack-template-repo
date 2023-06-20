// 贷款合同表（Loan Contracts）
import axios from 'axios';

const inst = axios.create({
    headers:{
        'Content-Type': 'application/json; charset=UTF-8',
    },
    baseURL:'/api'
})

export const getLoanContractById = (contractId) => {
  return inst.get(`${BASE_URL}/loan-contracts/${contractId}`);
};

export const createLoanContract = (loanContract) => {
  return inst.post(`${BASE_URL}/loan-contracts`, loanContract);
};

export const updateLoanContract = (contractId, loanContract) => {
  return inst.put(`${BASE_URL}/loan-contracts/${contractId}`, loanContract);
};

export const deleteLoanContract = (contractId) => {
  return inst.delete(`${BASE_URL}/loan-contracts/${contractId}`);
};
