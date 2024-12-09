package com.klu.project.ArtGallery;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;

import jakarta.annotation.PostConstruct;

@Service
public class OrderService {
    @Autowired
    private ArtOrderRepo artRepo;

    @Value("${razorpay.key.id}")
    private String razorPayKey;

    @Value("${razorpay.secret.key}")
    private String razorPaySecret;

    private RazorpayClient client;

    @PostConstruct
    public void init() throws Exception {
        this.client = new RazorpayClient(razorPayKey, razorPaySecret);
    }

    public ArtOrder createOrder(ArtOrder artorder) throws Exception {
        JSONObject orderReq = new JSONObject();
        orderReq.put("amount", artorder.getAmmount() * 100); // Amount in paise
        orderReq.put("currency", "INR");
        orderReq.put("receipt", "txn_" + artorder.getEmail());

        Order razorPayOrder = client.orders.create(orderReq);

        artorder.setRazorpayOrderId(razorPayOrder.get("id"));
        artorder.setOrderStatus(razorPayOrder.get("status"));

        artRepo.save(artorder);
        return artorder;
    }
}


