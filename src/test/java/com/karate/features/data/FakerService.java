package com.karate.features.data;
import com.github.javafaker.Faker;
import net.minidev.json.JSONObject;

public class FakerService {

	public static String getAppVersion() {
		return new Faker().app().version();
	}
	
	public static String getRandomUsername() {
		return new Faker().name().username();
	}
	
	public static String getRandomJob() {
		return new Faker().job().position();
	}
	
	public static JSONObject getJsonBody() {
		Faker faker = new Faker();
		String name = faker.name().username();
		String role = faker.job().position();
		
		JSONObject json = new JSONObject();
		json.put("name", name);
		json.put("job", role);
		return json;
	}
	
}
