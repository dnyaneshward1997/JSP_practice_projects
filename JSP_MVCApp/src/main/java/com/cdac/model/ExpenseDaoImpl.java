package com.cdac.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cdac.conn.MyConn;
import com.cdac.dao.ExpenseDao;

public class ExpenseDaoImpl implements ExpenseDao {
	private MyConn myConn;

	public ExpenseDaoImpl() {
		myConn = new MyConn();
	}

	@Override
	public void save(Expense expense) {
		try {
			Connection conn = myConn.getConn();
			PreparedStatement s = conn
					.prepareStatement("insert into Expense(item,price,quantity,edate,uid) values (?,?,?,?,?)");
			s.setString(1, expense.getItem());
			s.setFloat(2, expense.getPrice());
			s.setInt(3, expense.getQuantity());
			s.setString(4, expense.getEdate());
			s.setInt(5, expense.getUid());
			int i = s.executeUpdate();
			s.close();
			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Expense> selectAll(int uid) {
		List<Expense> list = new ArrayList<Expense>();
		try {
			Connection conn = myConn.getConn();
			PreparedStatement s = conn.prepareStatement("Select * from expense where uid = ?");

			s.setInt(1, uid);
			ResultSet rs = s.executeQuery();
			while (rs.next()) {
				Expense expense = new Expense();
				expense.setId(rs.getInt(1));
				expense.setItem(rs.getString(2));
				expense.setPrice(rs.getFloat(3));
				expense.setQuantity(rs.getInt(4));
				expense.setEdate(rs.getString(5));
				expense.setUid(rs.getInt(6));
				list.add(expense);

			}
			s.close();
			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public void deleteById(int id) {
		try {
			Connection conn = myConn.getConn();
			PreparedStatement s = conn.prepareStatement("delete from  Expense  where id = ?");
			s.setInt(1, id);
			int i = s.executeUpdate();
			s.close();
			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Expense selecteById(int id) {
		Expense expense = new Expense();
		try {
			Connection conn = myConn.getConn();
			PreparedStatement s = conn.prepareStatement("select * from Expense  where id = ?");

			s.setInt(1, id);
			ResultSet rs = s.executeQuery();
			if (rs.next()) {

				expense.setId(rs.getInt(1));
				expense.setItem(rs.getString(2));
				expense.setPrice(rs.getFloat(3));
				expense.setQuantity(rs.getInt(4));
				expense.setEdate(rs.getString(5));
				expense.setUid(rs.getInt(6));

			}
			s.close();
			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		return expense;

	}

	@Override
	public void update(Expense expense) {
		try {
			Connection conn = myConn.getConn();
			PreparedStatement s = conn
					.prepareStatement("update Expanse set item=?, price=? quantity=?, edate=? where id = ? ");
			s.setString(1, expense.getItem());
			s.setFloat(2, expense.getPrice());
			s.setInt(3, expense.getQuantity());
			s.setString(4, expense.getEdate());
			s.setInt(5, expense.getId());
			int i = s.executeUpdate();
			s.close();
			conn.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
