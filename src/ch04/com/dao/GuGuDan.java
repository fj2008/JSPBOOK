package ch04.com.dao;

import java.util.ArrayList;
import java.util.List;

public class GuGuDan {
	// �������� ����ϴ� �޼���
	public ArrayList<Integer> process(int gugudan) {
		List<Integer> result = new ArrayList<>();
		
		for(int i=1; i<=9; i++) {
			result.add(gugudan * i);
		}
		
		return (ArrayList<Integer>) result;
	}
}
