package com.asm.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.asm.entity.Order;
import com.asm.entity.OrderStatus;
import com.asm.entity.ReportMonth;

public interface OrderDAO extends PagingAndSortingRepository<Order, Integer> {
	List<Order> findByOrderstatus(OrderStatus orderstatus);
	
	@Query("SELECT new ReportMonth( MONTH(o.createDate),sum(o.price), count(o)) "
			+ " FROM Order o "
			+ " GROUP BY MONTH(o.createDate)"
			+ " ORDER BY sum(o.price) DESC")
			List<ReportMonth> getInventoryByMonth();
}
