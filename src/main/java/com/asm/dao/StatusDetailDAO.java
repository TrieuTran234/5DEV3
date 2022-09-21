package com.asm.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.asm.entity.StatusDetail;

public interface StatusDetailDAO extends PagingAndSortingRepository<StatusDetail, Integer> {

}
