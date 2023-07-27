package kr.ac.kopo.account;

public class ItemVO {

	private String item_name;
	private String item_content;
	private Double item_rate;
	private int item_type;
	
	
	
	public ItemVO() {
		super();
	}
	
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_content() {
		return item_content;
	}
	public void setItem_content(String item_content) {
		this.item_content = item_content;
	}
	public Double getItem_rate() {
		return item_rate;
	}
	public void setItem_rate(Double item_rate) {
		this.item_rate = item_rate;
	}
	public int getItem_type() {
		return item_type;
	}
	public void setItem_type(int item_type) {
		this.item_type = item_type;
	}
	@Override
	public String toString() {
		return "ItemVO [item_name=" + item_name + ", item_content=" + item_content + ", item_rate=" + item_rate
				+ ", item_type=" + item_type + "]";
	}
	
	public ItemVO(String item_name, String item_content, Double item_rate, int item_type) {
		super();
		this.item_name = item_name;
		this.item_content = item_content;
		this.item_rate = item_rate;
		this.item_type = item_type;
	}
	
	
	
	
	
	
	
}
