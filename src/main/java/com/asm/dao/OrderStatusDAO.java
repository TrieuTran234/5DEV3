package com.asm.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.asm.entity.OrderStatus;

public interface OrderStatusDAO extends CrudRepository<OrderStatus, String>{
	@Override
	default OrderStatus save(OrderStatus entity) {
		// TODO Auto-generated method stub
		return null;
	}
}
