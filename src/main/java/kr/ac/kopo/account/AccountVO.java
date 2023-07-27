package kr.ac.kopo.account;

import java.util.Date;

public class AccountVO {

	private String account;
	private String user_id;
	private String acc_nickname;
	private String ac_password;
	private String bankcode;
	private Long balance;
	private String item_name;
	private Date ac_date;
	private String slp_ac;
	
	
	
	public AccountVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AccountVO(String account, String user_id, String acc_nickname, String ac_password, String bankcode,
			Long balance, String item_name, Date ac_date, String slp_ac) {
		super();
		this.account = account;
		this.user_id = user_id;
		this.acc_nickname = acc_nickname;
		this.ac_password = ac_password;
		this.bankcode = bankcode;
		this.balance = balance;
		this.item_name = item_name;
		this.ac_date = ac_date;
		this.slp_ac = slp_ac;
	}
	@Override
	public String toString() {
		return "AccountVO [account=" + account + ", user_id=" + user_id + ", acc_nickname=" + acc_nickname
				+ ", ac_password=" + ac_password + ", bankcode=" + bankcode + ", balance=" + balance + ", item_name="
				+ item_name + ", ac_date=" + ac_date + ", slp_ac=" + slp_ac + "]";
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getAcc_nickname() {
		return acc_nickname;
	}
	public void setAcc_nickname(String acc_nickname) {
		this.acc_nickname = acc_nickname;
	}
	public String getAc_password() {
		return ac_password;
	}
	public void setAc_password(String ac_password) {
		this.ac_password = ac_password;
	}
	public String getBankcode() {
		return bankcode;
	}
	public void setBankcode(String bankcode) {
		this.bankcode = bankcode;
	}
	public Long getBalance() {
		return balance;
	}
	public void setBalance(Long balance) {
		this.balance = balance;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public Date getAc_date() {
		return ac_date;
	}
	public void setAc_date(Date ac_date) {
		this.ac_date = ac_date;
	}
	public String getSlp_ac() {
		return slp_ac;
	}
	public void setSlp_ac(String slp_ac) {
		this.slp_ac = slp_ac;
	}
	
	
	
	
	
	
	
}
