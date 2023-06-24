// 贷款合同表（Loan Contracts）
import axios from 'axios';

const inst = axios.create({
    headers:{
        'Content-Type': 'application/json; charset=UTF-8',
    },
    baseURL:'/api'
})

export const getLoanContractById = (contractId) => {
  return inst.get(`/loan-contracts/${contractId}`);
};


export const createLoanContract = (loanContract) => {
  return inst.post(`/loan-contracts`, loanContract);
};

export const updateLoanContract = (contractId, loanContract) => {
  return inst.put(`/loan-contracts/${contractId}`, loanContract);
};

export const deleteLoanContract = (contractId) => {
  return inst.delete(`/loan-contracts/${contractId}`);
};


export const getLoanContract = (params) => {
  return inst({url:`/loan-contracts`,params});
};

export const getTotal = (params) => {
  return inst({
    url:`/loan-contracts/total`,
    params
  });
};
