package kr.ac.kopo.account;

public class BankVO {

	
	private String bankcode;
	private String bankname;
	public BankVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BankVO(String bankcode, String bankname) {
		super();
		this.bankcode = bankcode;
		this.bankname = bankname;
	}
	public String getBankcode() {
		return bankcode;
	}
	public void setBankcode(String bankcode) {
		this.bankcode = bankcode;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	@Override
	public String toString() {
		return "BankVO [bankcode=" + bankcode + ", bankname=" + bankname + "]";
	}
	
	
	
	
}
