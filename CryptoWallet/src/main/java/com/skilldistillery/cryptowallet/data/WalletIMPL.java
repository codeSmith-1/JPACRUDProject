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
	public Wallet findTransById(int id) {
		String jpql = "SELECT w FROM Wallet w WHERE w.id = :id";
		Wallet trans = em.createQuery(jpql, Wallet.class).setParameter("id", id).getSingleResult();
		return trans;
	}

	@Override
	public List<Wallet> findTransBySymbol(String symbol) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Wallet createTransaction(Wallet w) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteTransaction(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Wallet editTransaction(int id, Wallet w) {
		// TODO Auto-generated method stub
		return null;
	}



}
