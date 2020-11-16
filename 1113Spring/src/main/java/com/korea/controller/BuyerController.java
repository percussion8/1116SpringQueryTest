package com.korea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.korea.domain.BuyerDTO;
import com.korea.domain.ProdDTO;
import com.korea.service.BuyerService;
import com.korea.service.ProdService;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Controller
@AllArgsConstructor
@RequestMapping("/shop")
public class BuyerController {
	@Setter(onMethod_=@Autowired)
	private BuyerService service;
	
	@Setter(onMethod_=@Autowired)
	private ProdService prodserv;
	
	@GetMapping("/logpage")
	public void logPage() {}
	
	@GetMapping("/signup")
	public void signupPage() {}
	
	@PostMapping("/signup")
	public String signedUp(BuyerDTO bdto) {
		service.signup(bdto);
		return "redirect:/shop/logpage";
	}
	
	@PostMapping("/logpage")
	public String login(@RequestParam("id")String id, @RequestParam("pass")String pass, RedirectAttributes redirect) {
		redirect.addAttribute("id", id);
		redirect.addAttribute("pass", pass);
		
		
		return "redirect:/shop/orderform";
	}
	
	@GetMapping("/orderform")
	public void form(@RequestParam("id")String id, @RequestParam("pass")String pass, Model model) {
		String ship = "";
		for (int i = 0; i < 6; i++) {
			ship += (int)(Math.random()*10);
		}
		System.out.println("송장번호는" + ship);
		model.addAttribute("orderno", ship);
		model.addAttribute("buyer", service.login(id, pass));
	}
	
	@PostMapping("/orderform")
	public String putOrder(ProdDTO pdto) {
		prodserv.order(pdto);
		
		return "redirect:/shop/logpage";
	}
	
	@GetMapping("/refund")
	public void refundPage(@RequestParam("id")String id, Model model) {
		model.addAttribute("id", id);
	}
	
	@GetMapping("/refunds")
	public void chooseRefund(@RequestParam("id")String id, @RequestParam("orderno")String no, Model model) {
		model.addAttribute("hist", prodserv.findOrder(id, no));
	}
	
	@GetMapping("/refunded")
	public String getRefund(@RequestParam("id")String id, @RequestParam("orderno")String no) {
		prodserv.payback(id, no);
		return "redirect:/shop/logpage";
	}
	
	

}
