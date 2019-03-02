package com.skilldistillery.data.entities;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class KittieslistingTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Kittieslisting kitty;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("OnlineStore");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em=emf.createEntityManager();
		kitty = em.find(Kittieslisting.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		kitty = null;
	}

	@Test
	void test_kittieslisting_mapping() {
		assertEquals("Mittens Mugwow", kitty.getName());
		assertEquals("Sup. I am the one and only Mittens Mugwow. Every Tuesday evening I watch tv and binge on horseradish. It makes the rest of the week bearable. K bye.",
				kitty.getDescription());
		assertEquals(1000, kitty.getPrice());
		assertEquals("nachocheez", kitty.getColor());
		assertEquals("2016-04-16", kitty.getDateOfBirth().toString());
		assertEquals(965054, kitty.getFatherId());
		assertEquals("highlander", kitty.getFur());
		assertEquals("t", kitty.getOnSale());
		assertEquals(1370711, kitty.getCryptoId());	
	}

}
