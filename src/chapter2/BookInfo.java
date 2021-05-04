package chapter2;

public class BookInfo {
	private String name;
	private int price;
	
	public BookInfo(String name, int price) {
		this.name = name;
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public int getPrice() {
		return price;
	}
	
	@Override
	public String toString() {
		return "name="+name+",price="+price;
	}
}



