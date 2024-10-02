package com.springlogin.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Relo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
    private String name;
    private String password;
    private String email;
    private String phnno;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhnno() {
		return phnno;
	}
	public void setPhnno(String phnno) {
		this.phnno = phnno;
	}
	public Relo(int id, String name, String password, String email, String phnno) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.phnno = phnno;
	}
	public Relo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Relo [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", phnno=" + phnno
				+ "]";
	}
    
}
