package com.controller;

import com.dto.response.LoanOfferResponse;
import com.dto.user.request.CreateNewUserRequest;

public interface UserController {
    /**
     * createNewUser
     * @param createNewUserReq
     * @return
     */


public LoanOfferResponse createNewUser(CreateNewUserRequest createNewUserReq);

}
