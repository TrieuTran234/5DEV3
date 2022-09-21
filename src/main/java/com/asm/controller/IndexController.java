package com.asm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.dao.OrderDetailsDAO;
import com.asm.dao.ProductDAO;
import com.asm.dao.PromotionDetailDAO;
import com.asm.entity.OrderDetail;
import com.asm.entity.Product;
import com.asm.entity.PromotionDetail;
import com.asm.service.FindUserService;
import com.asm.service.OrderDetailsService;
import com.asm.service.ProductService;
import com.asm.service.SessionService;

@Controller
public class IndexController {
	@Autowired
	FindUserService findUserService;
	@Autowired
	SessionService session;
	@Autowired
	ProductService productService;
	@Autowired
	OrderDetailsDAO orderDetailsDAO;
	@Autowired
	OrderDetailsService orderDetailsService;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	PromotionDetailDAO promotionDetailDAO;

	@RequestMapping("/index")
	public String index(Model model) {
		Pageable pageable = PageRequest.of(0, 5, Sort.by(Direction.ASC, "createDate"));
	
		Page<Product> page = productService.findAll(pageable); // tim cac don hang chi tiet chua san pham
		Iterable<PromotionDetail> listPromotionDetails=promotionDetailDAO.findAll();
		List<Product> listProducts=new ArrayList<Product>();
		for(PromotionDetail promotionDetail:listPromotionDetails) {
			listProducts.add(promotionDetail.getProduct());
		}
		model.addAttribute("items", listProducts);
		model.addAttribute("itemdate", page);
		return "/client/index";
	}

	@RequestMapping("/index/logout")
	public String logout() {
		session.remove("user");
		return "redirect:/index";
	}
}
