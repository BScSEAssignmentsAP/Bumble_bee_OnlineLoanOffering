package com.business.impl;

import com.business.EmailNotify;
import com.business.UserBusiness;
import com.dao.UserDAO;
import com.dto.request.EmailReq;
import com.dto.request.UserLoginReq;
import com.dto.response.CommonResponse;
import com.dto.response.GeneralResponse;
import com.dto.response.LoanOfferResponse;
import com.dto.user.request.CreateNewUserRequest;
import com.dto.user.request.GetCustomerDetailReq;
import com.dto.user.response.CustomerRes;
import com.util.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.logging.Logger;

@Service
public class UserBusinessImpl implements UserBusiness {
    Logger logger = Logger.getLogger(this.getClass().getName());


    @Autowired
    UserDAO userDAO;

    @Autowired
    EmailNotify emailNotify;

    @Override
    public GeneralResponse createNewUser(CreateNewUserRequest createNewUserReq) {
        String randomPassword = CommonUtil.generateRandomPasscode();
        logger.info("randomPassword------------>" + randomPassword);
        createNewUserReq.setSecretKey(randomPassword);
        GeneralResponse response = userDAO.createNewUser(createNewUserReq);

        if (response.isRes()) {
            /*Send Password to User via email*/
            EmailReq emailReq = new EmailReq();
            emailReq.setReceiver(createNewUserReq.getUserEmail());
            String bodyText = "Hi " + createNewUserReq.getFirstName() + "\n" + "Please find your loan offer system login" + "\n" + "Username is : " + createNewUserReq.getUserName() + "\n" + "Password is : " + randomPassword + "\n" + "Thank you, LoanOfferAdmin";
            logger.info("body--------------->" + bodyText);
            emailReq.setMessageBody(bodyText);
            emailReq.setSubject("LoanOfferSystem[ Login Password ]");
            emailNotify.sendEmil(emailReq);//sendEmail(emailReq);
        }
        return response;
    }

    @Override
    public CustomerRes getCustomerDetail(GetCustomerDetailReq getCustomerDetailReq) {
        return userDAO.getCustomerDetail(getCustomerDetailReq);
    }

    @Override
    public List<CustomerRes> getCustomerList() {
        return userDAO.getCustomerList();
    }

    @Override
    public CommonResponse login(UserLoginReq loginReq) {
        return userDAO.login(loginReq);
    }
}
