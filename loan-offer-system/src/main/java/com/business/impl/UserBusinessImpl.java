package com.business.impl;

import com.business.UserBusiness;
import com.dao.UserDAO;
import com.dto.response.GeneralResponse;
import com.dto.response.LoanOfferResponse;
import com.dto.user.request.CreateNewUserRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserBusinessImpl implements UserBusiness {
    @Autowired
    UserDAO userDAO;

    @Override
    public GeneralResponse createNewUser(CreateNewUserRequest createNewUserReq) {
        return userDAO.createNewUser(createNewUserReq);
    }
}
