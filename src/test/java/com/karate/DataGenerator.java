package com.karate;

import com.github.javafaker.*;


/**
 * 
 * @author Sheetal_Singh @prodbug
 */
public class DataGenerator {

	public static String getRandomUserName() {
		Faker faker = new Faker();
		String userName = faker.name().firstName().toLowerCase() + faker.random().nextInt(0, 10);
		return userName;
	}
	
}
 