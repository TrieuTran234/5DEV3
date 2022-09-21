package com.asm.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.dao.PromotionDetailDAO;
import com.asm.entity.Promotion;
import com.asm.entity.PromotionDetail;
import com.asm.entity.Staff;
import com.asm.service.ProductService;
import com.asm.service.PromontionService;
import com.asm.service.SessionService;
import com.asm.service.StaffService;

@Controller
public class PromotionsController {

	@Autowired
	PromontionService promontionService;
	@Autowired
	StaffService staffService;
	@Autowired
	SessionService sessionService;
	@Autowired
	ProductService productService;
	@Autowired
	PromotionDetailDAO promotionDetailDAO;

	String error = "";

	@RequestMapping("/admin/promotion/index")
	public String promotionIndex(Model model) {
		Promotion item = new Promotion();
		model.addAttribute("item", item);
		model.addAttribute("error", error);
		model.addAttribute("product", productService.findAll());
		model.addAttribute("items", promontionService.findAll());
		error = "";
		return "/admin/promotion";
	}

	@RequestMapping("/admin/promotion/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Promotion item = promontionService.findById(id).get();
		model.addAttribute("item", item);
		List<Promotion> items = promontionService.findAll();
		model.addAttribute("product", productService.findAll());
		model.addAttribute("items", items);
		return "/admin/promotion";
	}

	@RequestMapping("/admin/promotion/create")
	public String create(Promotion item, @RequestParam("productname") String[] productName) {

		if (!promontionService.existsById(item.getId())) {
			Staff staff = staffService.findById(sessionService.get("user")).get();
			item.setStaff(staff);
			promontionService.save(item);
			System.out.println(productName);
			for (String name : productName) {
				PromotionDetail detail = new PromotionDetail(null, item,
						productService.findById(Integer.parseInt(name)).get());
				promotionDetailDAO.save(detail);
			}

			error = "Create Promotion Successfully";
		} else {
			error = "Id already exists";
		}
		return "redirect:/admin/promotion/index";
	}

	@RequestMapping("/admin/promotion/update")
	public String update(Promotion item, Model model, @RequestParam("productname") String[] productName) {
		if (!promontionService.existsById(item.getId())) {
			error = "Id to update is not in the list";
		} else {
			Staff staff = staffService.findById(sessionService.get("user")).get();
			item.setStaff(staff);
			promontionService.save(item);
			// tao promotion detail
			for (PromotionDetail promotionDetail : promotionDetailDAO
					.findByPromotion(promontionService.findById(item.getId()).get())) {
				promotionDetailDAO.delete(promotionDetail);
			}
			for (String name : productName) {
				PromotionDetail detail = new PromotionDetail(null, item,
						productService.findById(Integer.parseInt(name)).get());
				promotionDetailDAO.save(detail);

			}

			error = "Update Promotion Successfully";
		}

		return "redirect:/admin/promotion/index";
	}

	@RequestMapping("/admin/promotion/delete/{id}")
	public String delete(@PathVariable("id") String id) {

		for (PromotionDetail promotionDetail : promotionDetailDAO
				.findByPromotion(promontionService.findById(id).get())) {
			promotionDetailDAO.delete(promotionDetail);
		}
		promontionService.deleteById(id);
		error = "DELETE Promotion Successfully";
		return "redirect:/admin/promotion/index";
	}

	@RequestMapping("/admin/promotiondetail/index/{id}")
	public String promotionDetailIndex(Model model, @PathVariable("id") String id) {

		model.addAttribute("error", error);

		model.addAttribute("items", promotionDetailDAO.findByPromotion(promontionService.findById(id).get()));
		error = "";
		return "/admin/promotionDetail";
	}

	@RequestMapping("/admin/promotiondetail/delete/{id}/{id2}")
	public String promotionDetailDelete(Model model, @PathVariable("id") Integer id,@PathVariable("id2") String id2) {
		promotionDetailDAO.deleteById(id);
		System.out.println(id);
		model.addAttribute("items", promotionDetailDAO.findByPromotion(promontionService.findById(id2).get()));
		error = "";
		return "/admin/promotionDetail";
	}
}
