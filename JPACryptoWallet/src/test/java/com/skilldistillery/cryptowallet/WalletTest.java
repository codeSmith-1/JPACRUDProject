package com.skilldistillery.cryptowallet;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class WalletTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Wallet wall;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACryptoWallet");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		wall = em.find(Wallet.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		wall = null;
		em.close();
	}

	@Test
	void test_Wallet_mappings() {
		assertNotNull(wall);
		assertEquals("Bitcoin", wall.getCurrency());
		assertEquals("BTC", wall.getSymbol());
	}
	
}
