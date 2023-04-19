package com.cdac.service;

import java.util.List;

import com.cdac.model.Expense;

public interface ExpenseService {

	public void add(Expense expense);
	
	public void modify(Expense expense);

	List<Expense> getAll(int uid);

	public void removeById(int id);

	public Expense getById(int id);
	
	
}
