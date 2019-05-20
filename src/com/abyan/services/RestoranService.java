package com.abyan.services;

import java.util.List;

import com.abyan.entity.Menu;
import com.abyan.entity.Restoran;
import com.abyan.entity.Tag;

public interface RestoranService {
	
	public List<Restoran> getRestoran();
	
	public void saveRestoran(Restoran resto);
	
	public Restoran getRestoranByID(int restoID);
	
	public void deleteRestoran(int restoID);

	public List<Tag> getTagRestoran(int restoID);
}
