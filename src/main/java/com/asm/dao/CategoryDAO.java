package com.asm.dao;

import org.springframework.data.repository.CrudRepository;

import com.asm.entity.Category;

public interface CategoryDAO extends CrudRepository<Category, String>{

}
