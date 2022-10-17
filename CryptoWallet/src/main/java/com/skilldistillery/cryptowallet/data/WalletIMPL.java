package com.skilldistillery.cryptowallet.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.cryptowallet.entities.Wallet;

@Service
@Transactional
public class WalletIMPL implements WalletDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Wallet> findAll() {
		String jpql = "SELECT w FROM Wallet w ORDER BY w.id";
		return em.createQuery(jpql, Wallet.class).getResultList();
	}

	@Override
	public Wallet findById(int id) {
		String jpql = "SELECT w FROM Wallet w WHERE w.id = :id";
		Wallet trans = em.createQuery(jpql, Wallet.class).setParameter("id", id).getSingleResult();
		return trans;
	}

	@Override
	public Wallet createTransaction(Wallet w) {
		String curr = w.getCurrency();
		if (curr.equalsIgnoreCase("Bitcoin")) {
			w.setSymbol("BTC");
		} else if (curr.equalsIgnoreCase("solana")) {
			w.setSymbol("SOL");
		} else if (curr.equalsIgnoreCase("Ethereum")) {
			w.setSymbol("ETH");
		} else {
			w.setSymbol("EDIT");
		}
		em.persist(w);
		em.flush();
		return w;
	}

	@Override
	public boolean deleteTransaction(int id) {
		Wallet w = em.find(Wallet.class, id);
		em.remove(w);
		boolean success = !em.contains(w);
		return success;
	}

	@Override
	public List<Wallet> findTransBySymbol(String symbol) {
		return null;
	}

	// id is reference to the existing, new Wallet is passed in
	@Override
	public Wallet editTransaction(int id, Wallet w) {
		Wallet updateWallet = em.find(Wallet.class, id);
		if (updateWallet != null) {
			updateWallet.setCurrency(w.getCurrency());
			updateWallet.setAmount(w.getAmount());
			updateWallet.setDate(w.getDate());
			updateWallet.setPrice(w.getPrice());
			updateWallet.setSymbol(w.getSymbol());
		}
		return updateWallet;
	}
}
