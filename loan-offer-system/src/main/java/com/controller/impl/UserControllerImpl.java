package com.controller.impl;

import com.business.UserBusiness;
import com.controller.UserController;
import com.dto.response.LoanOfferResponse;
import com.dto.user.request.CreateNewUserRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserControllerImpl implements UserController {
    @Autowired
    UserBusiness userBusiness;


    @Override
    @PostMapping("/create/new/user")
    public LoanOfferResponse createNewUser(@RequestBody CreateNewUserRequest createNewUserReq) {
        userBusiness.createNewUser(createNewUserReq);
        return null;
    }
}
