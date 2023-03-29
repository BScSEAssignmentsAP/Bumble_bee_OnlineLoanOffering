package com.business.impl;

import com.business.UserBusiness;
import com.dao.UserDAO;
import com.dto.response.GeneralResponse;
import com.dto.response.LoanOfferResponse;
import com.dto.user.request.CreateNewUserRequest;
import com.dto.user.request.GetCustomerDetailReq;
import com.dto.user.response.CustomerRes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserBusinessImpl implements UserBusiness {
    @Autowired
    UserDAO userDAO;

    @Override
    public GeneralResponse createNewUser(CreateNewUserRequest createNewUserReq) {
        return userDAO.createNewUser(createNewUserReq);
    }

    @Override
    public CustomerRes getCustomerDetail(GetCustomerDetailReq getCustomerDetailReq) {
        return userDAO.getCustomerDetail(getCustomerDetailReq);
    }

    @Override
    public List<CustomerRes> getCustomerList() {
        return userDAO.getCustomerList();
    }
}
