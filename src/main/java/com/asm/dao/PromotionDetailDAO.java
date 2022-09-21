package com.asm.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.asm.entity.Promotion;
import com.asm.entity.PromotionDetail;

public interface PromotionDetailDAO extends CrudRepository<PromotionDetail, Integer>{
	List<PromotionDetail> findByPromotion(Promotion promotion);
	
	
}
