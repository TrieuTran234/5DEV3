package com.asm.dao;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import com.asm.entity.CartItem;
import com.asm.entity.Customer;
import com.asm.entity.Product;


public interface CartItemDAO extends PagingAndSortingRepository<CartItem, Integer > {
	List<CartItem> findByCustomer(Customer customer);
	Optional<CartItem> findByCustomerAndProduct(Customer customer,Product product);
	
	@Transactional
	@Modifying
	@Query("DELETE FROM  CartItem c WHERE c.customer=?1")
	public void deleteByCustomer(Customer id);
	
	
}
