package com.skilldistillery.cryptowallet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.cryptowallet.data.WalletDAO;
import com.skilldistillery.cryptowallet.entities.Wallet;

@Controller
public class WalletController {

	@Autowired
	private WalletDAO dao;

	@RequestMapping(path = { "/", "home.do" }, method = RequestMethod.GET)
	public String index(Model model) {
		List<Wallet> list = dao.findAll();
		model.addAttribute("cryptos", list);
		return "index";
	}

	@RequestMapping(path = "getTrans.do", method = RequestMethod.GET)
	public String showWallet(int id, Model model) {
		Wallet w = dao.findById(id);
		model.addAttribute("trans", w);
		return "wallet/show";
	}

	@RequestMapping(path = "success.do", method = RequestMethod.GET)
	public String success() {
		return "wallet/success"; // redirect to new mapping
	}

	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public String delete(Integer id, RedirectAttributes redir) {
		boolean bool = dao.deleteTransaction(id);
		redir.addFlashAttribute("delete", bool);
		return "redirect:success.do";
	}
	
	@RequestMapping(path = "create.do", method = RequestMethod.GET)
	public String create() {
		return "wallet/create";
	}
	
	@RequestMapping(path = "save.do", method = RequestMethod.POST)
	public String saveUpdate(Wallet wallet, Integer id, RedirectAttributes redir) {
		redir.addFlashAttribute("newTrans", dao.createTransaction(wallet));
		return "wallet/success";
	}
	@RequestMapping(path = "submitTrans.do", method = RequestMethod.POST)
	public String submitNew(Wallet wallet, RedirectAttributes redir) {
		Wallet submit = dao.createTransaction(wallet);
		redir.addFlashAttribute("newTrans", dao.createTransaction(wallet));
		return "wallet/success";
	}
	
	
	@RequestMapping(path = "edit.do", method = RequestMethod.POST)
	public String edit(Wallet wallet, Integer id, RedirectAttributes redir) {
		Wallet newWallet = dao.editTransaction(id, wallet);
		boolean success;
		if (newWallet!=null) {
			success = true;
		} else {
			success = false;
		}
		redir.addFlashAttribute("wallet", dao.editTransaction(id, wallet));
		redir.addFlashAttribute("success", success);
		return "redirect:success.do";
	}
}
