package com.cdac.dao;

import java.util.List;

import com.cdac.model.Expense;

public interface ExpenseDao {

	public void save(Expense Expense);
	
	public void update(Expense Expense);
	
	public void deleteById(int id);
	
	public Expense selecteById(int id);
	
	List<Expense> selectAll(int uid);
	
}
