package com.asm.service;

import java.util.List;
import java.util.Optional;

import com.asm.entity.Category;

public interface CategoryService {

	void deleteAll();

	void deleteAll(List<Category> entities);

	void deleteAllById(List<String> ids);

	void delete(Category entity);

	void deleteById(String id);

	long count();

	List<Category> findAllById(List<String> ids);

	List<Category> findAll();

	boolean existsById(String id);

	Optional<Category> findById(String id);

	List<Category> saveAll(List<Category> entities);

	<S extends Category> S save(S entity);

}
