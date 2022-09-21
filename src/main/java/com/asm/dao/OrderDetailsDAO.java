package com.asm.dao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.asm.entity.Order;
import com.asm.entity.OrderDetail;
import com.asm.entity.Product;

public interface OrderDetailsDAO extends PagingAndSortingRepository<OrderDetail, Integer> {
	List<OrderDetail> findByOrder(Order order);
	
	List<OrderDetail> findByProduct(Product product);
}
