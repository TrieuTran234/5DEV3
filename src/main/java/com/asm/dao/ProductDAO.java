package com.asm.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.asm.entity.Category;
import com.asm.entity.OrderDetail;
import com.asm.entity.Product;
import com.asm.entity.PromotionDetail;
import com.asm.entity.Report;
import com.asm.entity.ReportMonth;


public interface ProductDAO extends PagingAndSortingRepository<Product, Integer>{
	Page<Product> findByCategory(Category category,Pageable pageable);
	
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1 and o.category =?2")
	Page<Product> findByNameAndCategory(String keywords, Category category,Pageable pageable);
	
	List<Product> findByName(String name);
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);
	
	
	@Query("SELECT new Report(o.category.id,o.category.name,sum(o.price), count(o)) "
			+ " FROM Product o "
			+ " GROUP BY o.category.id,o.category.name"
			+ " ORDER BY sum(o.price) DESC")
			List<Report> getInventoryByCategory();
	
	
	
}
