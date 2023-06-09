package com.cdac.service;

import java.util.List;

import com.cdac.dao.ExpenseDao;
import com.cdac.model.Expense;
import com.cdac.model.ExpenseDaoImpl;

public class ExpenseServiceImpl implements ExpenseService {

	private ExpenseDao expenseDao;

	public ExpenseServiceImpl() {
		expenseDao = new ExpenseDaoImpl();
	}

	@Override
	public void add(Expense expense) {
		expenseDao.save(expense);

	}

	@Override
	public List<Expense> getAll(int uid) {

		return expenseDao.selectAll(uid);
	}

	@Override
	public void removeById(int id) {
		expenseDao.deleteById(id);

	}

	@Override
	public Expense getById(int id) {

		return expenseDao.selecteById(id);
	}

	@Override
	public void modify(Expense expense) {
		expenseDao.update(expense);
		
	}

}
