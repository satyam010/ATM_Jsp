package dao;

import java.sql.Date;


public class mini {

	/**
	 * @param args
	 */
	int amount;
	String type;
	String username;
	int abalance;
	String tdate;
	
	public mini() {
		// TODO Auto-generated constructor stub
	}

	public mini(int amount, String type, String username, int abalance,String tdate) {
		super();
		this.amount = amount;
		this.type = type;
		this.username = username;
		this.abalance = abalance;
		this.tdate = tdate;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getAbalance() {
		return abalance;
	}

	public void setAbalance(int abalance) {
		this.abalance = abalance;
	}

	public String getTdate() {
		return tdate;
	}

	public void setTdate(String tdate) {
		this.tdate = tdate;
	}
	
	
}

	