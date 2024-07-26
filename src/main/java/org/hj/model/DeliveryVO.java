package org.hj.model;

public class DeliveryVO {

	private String o_no;
	private String o_id;
	private String o_address;
	private String hub_name;
    private int d_no;
    private double x;
    private double y;
    private Boolean d_complete;
	
	
	public String getO_no() {
		return o_no;
	}
	public void setO_no(String o_no) {
		this.o_no = o_no;
	}
	public String getO_id() {
		return o_id;
	}
	public void setO_id(String o_id) {
		this.o_id = o_id;
	}
	public String getO_address() {
		return o_address;
	}
	public void setO_address(String o_address) {
		this.o_address = o_address;
	}
	public int getD_no() {
		return d_no;
	}
	public void setD_no(int d_no) {
		this.d_no = d_no;
	}
	public double getX() {
		return x;
	}
	public String getHub_name() {
		return hub_name;
	}
	public void setHub_name(String hub_name) {
		this.hub_name = hub_name;
	}
	public void setX(double x) {
		this.x = x;
	}
    public Boolean getD_complete() {
        return d_complete;
    }
    public void setD_complete(Boolean d_complete) {
        this.d_complete = d_complete;
    }
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
	@Override
	public String toString() {
		return "DeliveryVO [o_no=" + o_no + ", o_id=" + o_id + ", o_address=" + o_address + ", hub_name=" + hub_name
				+ ", d_no=" + d_no + ", x=" + x + ", y=" + y + ", d_complete=" + d_complete + "]";
	}
	
	

	
}
