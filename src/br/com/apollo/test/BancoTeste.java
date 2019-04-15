package br.com.apollo.test;

import javax.persistence.Persistence;

public class BancoTeste {

	public static void main(String[] args) {
		Persistence.createEntityManagerFactory("smart").createEntityManager();
	}
	
}

