package com.skilldistillery.cryptowallet.data;

import java.util.List;

import com.skilldistillery.cryptowallet.entities.Wallet;

public interface WalletDAO {
	List<Wallet> findAll();
	Wallet findById(int id);
	List<Wallet> findTransBySymbol(String symbol);
	Wallet createTransaction(Wallet w);
	boolean deleteTransaction(int id);
	Wallet editTransaction(int id, Wallet w);
}
