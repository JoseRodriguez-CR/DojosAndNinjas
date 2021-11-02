package com.joserodriguez.dojosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

//import com.joserodriguez.dojosandninjas.models.Dojo;
import com.joserodriguez.dojosandninjas.models.Ninja;
//import com.joserodriguez.dojosandninjas.repositories.DojoRepository;
import com.joserodriguez.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private final NinjaRepository ninjaRepository;
	//private final DojoRepository dojoRepository;
	
	//public NinjaService( NinjaRepository ninjaRepository, DojoRepository dojoRepository) {
	public NinjaService( NinjaRepository ninjaRepository){
		this.ninjaRepository = ninjaRepository;
		//this.dojoRepository = dojoRepository;
	}

	public void addNinja(Ninja ninja) {
		ninjaRepository.save(ninja);
	}
	

	/*public List<Dojo> getAllDojos() {
		return dojoRepository.findAll();
	}*/
	public List<Ninja> getAllNinjas() {
	return ninjaRepository.findAll();
	}
	

}


