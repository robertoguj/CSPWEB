package com.cspecem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.dao.PersonDAO;
import com.cspecem.model.Person;

@Service("personService")
@Transactional
public class PersonServiceImpl implements PersonService {
	
	@Autowired
	PersonDAO personDAO;

	public void setPersonDAO(PersonDAO personDAO) {
		this.personDAO = personDAO;
	}

	public void addPerson(Person p) {
		this.personDAO.addPerson(p);
	}

	public void updatePerson(Person p) {
		this.personDAO.updatePerson(p);
	}

	public List<Person> listPersons() {
		return this.personDAO.listPersons();
	}

	public Person getPersonById(int id) {
		return this.personDAO.getPersonById(id);
	}

	public void removePerson(int id) {
		this.personDAO.removePerson(id);
	}

}
