package ch04.com.dao;

import java.util.ArrayList;
import java.util.List;

public class GuGuDan {
	// 구구단을 계산하는 메서드
	public ArrayList<Integer> process(int gugudan) {
		List<Integer> result = new ArrayList<>();
		
		for(int i=1; i<=9; i++) {
			result.add(gugudan * i);
		}
		
		return (ArrayList<Integer>) result;
	}
}
