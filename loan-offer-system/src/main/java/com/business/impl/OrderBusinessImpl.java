package com.business.impl;

import com.business.OrderBusiness;
import com.dao.OrderDAO;
import com.dto.request.GetOredrDetailReq;
import com.dto.response.CommonResponse;
import com.dto.response.GetOrderDetailRes;
import com.dto.response.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.logging.Logger;


@Service
public class OrderBusinessImpl implements OrderBusiness {

    Logger logger = Logger.getLogger(this.getClass().getName());

    @Autowired
    OrderDAO orderDAO;



    @Override
    public List<Product> getAllProducts() {
        return orderDAO.getAllProducts();
    }

    @Override
    public CommonResponse getOrderSingleCalculation(GetOredrDetailReq getOrderDetailReq) {
        return orderDAO.getOrderSingleCalculation(getOrderDetailReq);
    }


}
