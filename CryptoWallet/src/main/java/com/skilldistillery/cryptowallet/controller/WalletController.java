package com.skilldistillery.cryptowallet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.cryptowallet.data.WalletDAO;
import com.skilldistillery.cryptowallet.entities.Wallet;

@Controller
public class WalletController {

	@Autowired
	private WalletDAO dao;
	
	@RequestMapping(path= {"/", "home.do"}, method = RequestMethod.GET)
	  public String index(Model model) {
		  model.addAttribute("cryptos", dao.findAll());
		  return "index";
	  }
	
	  @RequestMapping(path = "getTrans.do", method = RequestMethod.GET)
	  public String showWallet(int id, Model model) {
	    Wallet w = dao.findTransById(id);     
	    model.addAttribute("trans", w);
	    return "wallet/show";
	  }
}
