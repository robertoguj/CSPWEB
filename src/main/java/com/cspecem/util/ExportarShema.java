package com.cspecem.util;

import javax.persistence.Persistence;

public class ExportarShema {

	public static void main(String[] args) {
		try {
			Persistence.createEntityManagerFactory("CSPWEB");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
