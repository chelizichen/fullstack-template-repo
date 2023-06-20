// 还款记录表（Repayment Records
import axios from 'axios';

const inst = axios.create({
    headers:{
        'Content-Type': 'application/json; charset=UTF-8',
    },
    baseURL:'/api'
})
export const getRepaymentRecordById = (recordId) => {
  return inst.get(`${BASE_URL}/repayment-records/${recordId}`);
};

export const createRepaymentRecord = (repaymentRecord) => {
  return inst.post(`${BASE_URL}/repayment-records`, repaymentRecord);
};

export const updateRepaymentRecord = (recordId, repaymentRecord) => {
  return inst.put(`${BASE_URL}/repayment-records/${recordId}`, repaymentRecord);
};

export const deleteRepaymentRecord = (recordId) => {
  return inst.delete(`${BASE_URL}/repayment-records/${recordId}`);
};
