package com.skilldistillery.onlinestore.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.data.entities.Kitty;

@Transactional
@Service
public class KittyDAOImpl implements KittyDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Kitty findKittyById(int id) {
		return em.find(Kitty.class, id);
	}

	@Override
	public List<Kitty> findAll() {
		String query = "SELECT k FROM Kitty k";

		List<Kitty> results = em.createQuery(query, Kitty.class).getResultList();

		return results;
	}


	@Override
	public Kitty createKitty(Kitty kitty) {
		System.out.println(kitty);
		em.persist(kitty);
		em.flush();

		return kitty;
	}

	@Override
	public Boolean deleteKitty(int id) {
		Kitty kitty = em.find(Kitty.class, id);

		em.remove(kitty);

		Boolean result = !em.contains(kitty);
		em.close();
		
		return result;
	}

	@Override
	public Kitty saveKitty(Kitty kitty, int id) {
		// retrieve a "managed" customer entity
		Kitty managedKitty = em.find(Kitty.class, id);
System.out.println(id+ "***************************************************");
		// update the values of the managed entity
		managedKitty.setName(kitty.getName());
		managedKitty.setGeneration(kitty.getGeneration());
		managedKitty.setCryptoId(kitty.getCryptoId());
		managedKitty.setPrice(kitty.getPrice());
		managedKitty.setDescription(kitty.getDescription());
		managedKitty.setDateOfBirth(kitty.getDateOfBirth());
		managedKitty.setPriceEth(kitty.getPriceEth());
		managedKitty.setImgUrl(kitty.getImgUrl());
		managedKitty.setColor(kitty.getColor());
		managedKitty.setOnSale(kitty.getOnSale());
		managedKitty.setCryptoId(kitty.getCryptoId());
		managedKitty.setFatherId(kitty.getFatherId());
		managedKitty.setMotherId(kitty.getMotherId());
		managedKitty.setEyeColour(kitty.getEyeColour());
		managedKitty.setPattern(kitty.getPattern());
		managedKitty.setFur(kitty.getFur());
		managedKitty.setMouth(kitty.getMouth());
		

		return managedKitty;
	}
	


}
