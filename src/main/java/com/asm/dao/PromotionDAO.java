package com.asm.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.asm.entity.Promotion;

public interface PromotionDAO extends PagingAndSortingRepository<Promotion, String> {

}
