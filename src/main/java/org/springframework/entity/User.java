package org.springframework.entity;

public class User {
	private String name;
	private String lastName;
	private int age;
	private String number;
	private String address;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public int getAge() {
		return age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getNumber() {
		return number;
	}
	
	public void setNumber(String number) {
		this.number = number;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public User(String name, String lastname, int age, String number, String address) {
		this.name = name;
		this.lastName = lastname;
		this.age = age;
		this.number = number;
		this.address = address;
	}
}
