package com.springlogin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlogin.entities.Relo;
import com.springlogin.repository.ReloRepository;

@Service
public class ReloService {
 	   
		@Autowired
		private ReloRepository repo;
		
		public boolean createUser(Relo relo)
		{
			//return repo.save(relo) != null;
			
			try {
				repo.save(relo);
				return true;
			}
			catch(Exception e){
				return false;
			}
		}
		
		public Relo loginUsser(String email,String password)
		{
			 Relo relo=repo.findByEmail(email);
			 
			 if(relo != null && relo.getPassword().equals(password))
			 {
				 return relo;
			 }
			 return null;
		}
}
