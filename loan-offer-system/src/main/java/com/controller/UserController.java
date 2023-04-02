package com.controller;

import com.dto.request.UserLoginReq;
import com.dto.response.LoanOfferResponse;
import com.dto.user.request.CreateNewUserRequest;
import com.dto.user.request.GetCustomerDetailReq;

public interface UserController {
    /**
     * createNewUser
     *
     * @param createNewUserReq
     * @return
     */


    public LoanOfferResponse createNewUser(CreateNewUserRequest createNewUserReq);

    /**
     * getCustomerDetail
     *
     * @param getCustomerDetailReq
     * @return
     */
    public LoanOfferResponse getCustomerDetail(GetCustomerDetailReq getCustomerDetailReq);


    /**
     * @return
     */
    public LoanOfferResponse getCustomerList();


    public LoanOfferResponse login(UserLoginReq loginReq);

}
