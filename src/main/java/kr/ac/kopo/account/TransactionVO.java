package kr.ac.kopo.account;

import java.sql.Timestamp;

public class TransactionVO {

	private int ts_no;
	private String acc_no;
	private String bankcode;
	private String sender;
	private Timestamp t_date;
	private String t_comment;
	private String t_type;
	private long t_amount;
	private long balance;
	private String rc_bankcode;
	private String rc_account;
	private String bankname;
	private String receiver;
	
	
	public TransactionVO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public TransactionVO(int ts_no, String acc_no, String bankcode, String sender, Timestamp t_date, String t_comment,
			String t_type, long t_amount, long balance, String rc_bankcode, String rc_account, String bankname,
			String receiver) {
		super();
		this.ts_no = ts_no;
		this.acc_no = acc_no;
		this.bankcode = bankcode;
		this.sender = sender;
		this.t_date = t_date;
		this.t_comment = t_comment;
		this.t_type = t_type;
		this.t_amount = t_amount;
		this.balance = balance;
		this.rc_bankcode = rc_bankcode;
		this.rc_account = rc_account;
		this.bankname = bankname;
		this.receiver = receiver;
	}


	@Override
	public String toString() {
		return "TransactionVO [ts_no=" + ts_no + ", acc_no=" + acc_no + ", bankcode=" + bankcode + ", sender=" + sender
				+ ", t_date=" + t_date + ", t_comment=" + t_comment + ", t_type=" + t_type + ", t_amount=" + t_amount
				+ ", balance=" + balance + ", rc_bankcode=" + rc_bankcode + ", rc_account=" + rc_account + ", bankname="
				+ bankname + ", receiver=" + receiver + "]";
	}


	public int getTs_no() {
		return ts_no;
	}


	public void setTs_no(int ts_no) {
		this.ts_no = ts_no;
	}


	public String getAcc_no() {
		return acc_no;
	}


	public void setAcc_no(String acc_no) {
		this.acc_no = acc_no;
	}


	public String getBankcode() {
		return bankcode;
	}


	public void setBankcode(String bankcode) {
		this.bankcode = bankcode;
	}


	public String getSender() {
		return sender;
	}


	public void setSender(String sender) {
		this.sender = sender;
	}


	public Timestamp getT_date() {
		return t_date;
	}


	public void setT_date(Timestamp t_date) {
		this.t_date = t_date;
	}


	public String getT_comment() {
		return t_comment;
	}


	public void setT_comment(String t_comment) {
		this.t_comment = t_comment;
	}


	public String getT_type() {
		return t_type;
	}


	public void setT_type(String t_type) {
		this.t_type = t_type;
	}


	public long getT_amount() {
		return t_amount;
	}


	public void setT_amount(long t_amount) {
		this.t_amount = t_amount;
	}


	public long getBalance() {
		return balance;
	}


	public void setBalance(long balance) {
		this.balance = balance;
	}


	public String getRc_bankcode() {
		return rc_bankcode;
	}


	public void setRc_bankcode(String rc_bankcode) {
		this.rc_bankcode = rc_bankcode;
	}


	public String getRc_account() {
		return rc_account;
	}


	public void setRc_account(String rc_account) {
		this.rc_account = rc_account;
	}


	public String getBankname() {
		return bankname;
	}


	public void setBankname(String bankname) {
		this.bankname = bankname;
	}


	public String getReceiver() {
		return receiver;
	}


	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	
	
	
	
}
