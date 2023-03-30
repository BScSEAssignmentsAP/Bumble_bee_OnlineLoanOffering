package com.controller;

import com.dto.request.GetOredrDetailReq;
import com.dto.response.LoanOfferResponse;
import org.springframework.web.bind.annotation.PostMapping;

public interface OrderController {
    /**
     * getAllProducts
     * @return
     */
    public LoanOfferResponse getAllProducts() ;


    /**
     * getOrderSingleCalculation
     * @param getOrderDetailReq
     * @return
     */
    public LoanOfferResponse getOrderSingleCalculation(GetOredrDetailReq getOrderDetailReq);


}
