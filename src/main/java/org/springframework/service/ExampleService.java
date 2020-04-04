package org.springframework.service;

import java.util.ArrayList;

import org.springframework.entity.User;
import org.springframework.stereotype.Service;

@Service("service")
public class ExampleService {
	public ArrayList<User> findAll() {
		ArrayList<User> users = new ArrayList<User>();
		User user = new User("Sofia", "Sanchez Ramos", 27, "260236788", "Cuautitlan Izcalli");
		users.add(user);
		user = new User("Ramon", "Cansino Mendez", 25, "545845544", "Iztapalapa");
		users.add(user);
		user = new User("Edgar", "Enriquez Jimenez", 33, "545455584", "Barranca del muerto");
		users.add(user);
		user = new User("Leonardo", "Leo Leo", 27, "584236814", "Garibaldi");
		users.add(user);
		user = new User("Jorge", "Sanchez Ramos", 20, "584124544", "Cuautitlan Izcalli");
		users.add(user);
	    user = new User("Sofia", "Ramos Ortiz", 55, "58744569", "Cuautitlan Izcalli");
		users.add(user);
		user = new User("Alejandro", "Sanchez Perete", 59, "58742556", "Cuautitlan Izcalli");
		users.add(user);

		return users;
	}
}
