package com.asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexctr {

@RequestMapping("/about")
public String about() {
	return "/client/about";
}

@RequestMapping("/login")
public String login() {
	return "/client/login";
}

@RequestMapping("/contact")
public String contact() {
	return "/client/contact";
}
@RequestMapping("/shop-details")
public String shopdetails() {
	return "/client/shop-details";
}
@RequestMapping("/admin/product")
public String product() {
	return "/admin/product";
}
@RequestMapping("/blog-details")
public String blogdetails() {
	return "/client/blog-details";
}
@RequestMapping("/blog")
public String blog() {
	return"/client/blog";
}


@RequestMapping("/admin/order")
public String order() {
	return "/admin/order";
}

}
