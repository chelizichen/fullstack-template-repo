// 贷款申请表（Loan Applications）
import axios from 'axios';

const inst = axios.create({
  headers: {
    'Content-Type': 'application/json; charset=UTF-8',
  },
  baseURL: '/api'
})


export const getLoanApplicationById = (applicationId) => {
  return inst.get(`/loan-applications/${applicationId}`);
};


export const getLoanApplicationList = (params) => {
  return inst({
    url:`/loan-applications`,
    params
  });
};
export const getTotal = (params) => {
  return inst({
    url:`/loan-applications/total`,
    params
  });
};

export const createLoanApplication = (loanApplication) => {
  return inst.post(`/loan-applications`, loanApplication);
};

export const updateLoanApplication = (applicationId, loanApplication) => {
  return inst.put(`/loan-applications/${applicationId}`, loanApplication);
};

export const deleteLoanApplication = (applicationId) => {
  return inst.delete(`/loan-applications/${applicationId}`);
};