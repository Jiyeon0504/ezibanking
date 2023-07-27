package kr.ac.kopo.user;

public class UserVO {


	private String user_id;	    
	private String user_password; 	
	private String user_name;        
	private String user_birth;	
	private String user_gender;    	
	private String user_email;	       
	private String user_phone;  	     
	private String user_zipcode;	      
	private String user_address;	     
	private String user_address2;  	      
	private String opbk_agree;
	

	
	
	

	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}






	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", user_password=" + user_password + ", user_name=" + user_name
				+ ", user_birth=" + user_birth + ", user_gender=" + user_gender + ", user_email=" + user_email
				+ ", user_phone=" + user_phone + ", user_zipcode=" + user_zipcode + ", user_address=" + user_address
				+ ", user_address2=" + user_address2 + ", opbk_agree=" + opbk_agree + "]";
	}






	public String getUser_id() {
		return user_id;
	}






	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}






	public String getUser_password() {
		return user_password;
	}






	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}






	public String getUser_name() {
		return user_name;
	}






	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}






	public String getUser_birth() {
		return user_birth;
	}






	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}






	public String getUser_gender() {
		return user_gender;
	}






	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}






	public String getUser_email() {
		return user_email;
	}






	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}






	public String getUser_phone() {
		return user_phone;
	}






	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}






	public String getUser_zipcode() {
		return user_zipcode;
	}






	public void setUser_zipcode(String user_zipcode) {
		this.user_zipcode = user_zipcode;
	}






	public String getUser_address() {
		return user_address;
	}






	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}






	public String getUser_address2() {
		return user_address2;
	}






	public void setUser_address2(String user_address2) {
		this.user_address2 = user_address2;
	}






	public String getOpbk_agree() {
		return opbk_agree;
	}






	public void setOpbk_agree(String opbk_agree) {
		this.opbk_agree = opbk_agree;
	}






	public UserVO(String id, String password) {
		this.user_id = id;
		this.user_password = password;
	} 	      

	
	
	
	
}
