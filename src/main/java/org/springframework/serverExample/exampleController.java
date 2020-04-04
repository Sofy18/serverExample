package org.springframework.serverExample;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.entity.User;
import org.springframework.service.ExampleService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/user")
public class exampleController {
	private ExampleService service = new ExampleService();

	@RequestMapping(value = "/getAll", method = RequestMethod.GET)
	public List<User> getAll() {
		System.out.println("orales");
		
	  return this.service.findAll();
	}
	 
}
