package com.cspecem.model;

import java.io.Serializable;

public enum ProfileTipo implements Serializable{
	USER("USER"),
	DBA("DBA"),
	ADMIN("ADMIN");
	
	String profileTipo;
	
	private ProfileTipo(String profileTipo){
		this.profileTipo = profileTipo;
	}
	
	public String getProfileTipo(){
		return profileTipo;
	}
	
}
