package com.asm.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.dao.ProductDAO;
import com.asm.entity.Category;
import com.asm.entity.Product;
import com.asm.service.CategoryService;
import com.asm.service.ProductService;

@Controller
public class ShopdetailController {
	@Autowired
	ProductService productService;
	@Autowired
	ProductDAO productDAO;
	@RequestMapping("/client/shopdetail/index/{id}")
	public String shopdetailIndex(Model model,@PathVariable("id") Integer id) {
		Pageable pageable=PageRequest.ofSize(5);
		Optional<Product> productOptional=productService.findById(id);
		if(productOptional.isPresent()) {
			Product product=productOptional.get();
			Page<Product> pageProduct=productDAO.findByCategory(product.getCategory(), pageable);
			model.addAttribute("page", pageProduct);
			model.addAttribute("item", product);
		}
		
		return "/client/shop-details";
	}
}
