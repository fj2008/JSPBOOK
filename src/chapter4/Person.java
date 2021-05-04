package chapter4;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class Person {
	private int id;
	private String name;

	public Person() {

	}

	public Person(int id, String name) {
		this.id = id;
		
		setName(name);
	}

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
		URLDecoder decoder = new URLDecoder();
		
		try {
			this.name = decoder.decode(name, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}



