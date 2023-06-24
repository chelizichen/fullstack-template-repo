// 还款记录表（Repayment Records
import axios from 'axios';

const inst = axios.create({
  headers: {
    'Content-Type': 'application/json; charset=UTF-8',
  },
  baseURL: '/api'
})
export const getRepaymentRecordById = (recordId) => {
  return inst.get(`/repayment-records/${recordId}`);
};

export const createRepaymentRecord = (repaymentRecord) => {
  return inst.post(`/repayment-records`, repaymentRecord);
};

export const updateRepaymentRecord = (recordId, repaymentRecord) => {
  return inst.put(`/repayment-records/${recordId}`, repaymentRecord);
};

export const deleteRepaymentRecord = (recordId) => {
  return inst.delete(`/repayment-records/${recordId}`);
};

export const getRepaymentRecord = (params) => {
  return inst({ url: `/repayment-records`, params });
};
export const getTotal = (params) => {
  return inst({
    url: `/repayment-records/total`,
    params
  });
};

