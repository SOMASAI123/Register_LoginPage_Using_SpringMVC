package com.springlogin.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springlogin.entities.Relo;
import java.util.List;


@Repository
public interface ReloRepository extends JpaRepository<Relo, Integer> {
    
	Relo findByEmail(String email);
}
