package com.skilldistillery.onlinestore.data;

import java.util.List;

import com.skilldistillery.data.entities.Kitty;

public interface KittyDAO {
	
	Kitty findKittyById(int id);
	List<Kitty> findAll();
	Kitty createKitty(Kitty kitty);
	Boolean deleteKitty(int id);
	Kitty saveKitty(Kitty kitty, int id);

}
