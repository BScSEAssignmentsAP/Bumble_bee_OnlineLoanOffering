package com.dao;

import com.dto.request.GetOredrDetailReq;
import com.dto.response.GetOrderDetailRes;
import com.dto.response.Product;

import java.util.List;

public interface OrderDAO {

    /**
     * getAllProducts
     * @return
     */
    public List<Product> getAllProducts();


    /**
     * getOrderSingleCalculation
     * @param getOrderDetailReq
     * @return
     */
    GetOrderDetailRes getOrderSingleCalculation(GetOredrDetailReq getOrderDetailReq);
}
