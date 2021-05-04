package chapter4;

import java.io.Serializable;

public class MemberBean implements Serializable {
	private static final long serialVersionUID = 6557024430571075302L;
	
	private int id;
	private String name;

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
		this.name = name;
	}

}
