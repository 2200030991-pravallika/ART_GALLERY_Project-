package com.klu.project.ArtGallery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ArtController {
	
   @Autowired
   private OrderService service;
   
   @GetMapping("/payment")
   public String init() {
	   return "payment";
   }
   @PostMapping(value="/create-order",produces="application/json")
   @ResponseBody
   public ResponseEntity<ArtOrder>createOrder(@RequestBody ArtOrder artOrder) throws Exception{
	   ArtOrder createOrder = service.createOrder(artOrder);
	   return new ResponseEntity<>(createOrder, HttpStatus.CREATED);
   }
   
  
}

