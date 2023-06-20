// 贷款申请表（Loan Applications）
import axios from 'axios';

const inst = axios.create({
    headers:{
        'Content-Type': 'application/json; charset=UTF-8',
    },
    baseURL:'/api'
})


export const getLoanApplicationById = (applicationId) => {
    return inst.get(`${BASE_URL}/loan-applications/${applicationId}`);
  };
  
  export const createLoanApplication = (loanApplication) => {
    return inst.post(`${BASE_URL}/loan-applications`, loanApplication);
  };
  
  export const updateLoanApplication = (applicationId, loanApplication) => {
    return inst.put(`${BASE_URL}/loan-applications/${applicationId}`, loanApplication);
  };
  
  export const deleteLoanApplication = (applicationId) => {
    return inst.delete(`${BASE_URL}/loan-applications/${applicationId}`);
  };