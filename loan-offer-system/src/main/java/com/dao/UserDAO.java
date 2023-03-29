package com.dao;

import com.dto.response.GeneralResponse;
import com.dto.response.LoanOfferResponse;
import com.dto.user.request.CreateNewUserRequest;

public interface UserDAO {

    /**
     * createNewUser
     * @param createNewUserReq
     * @return
     */
    GeneralResponse createNewUser(CreateNewUserRequest createNewUserReq);
}
