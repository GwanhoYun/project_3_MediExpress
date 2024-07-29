package org.hj.model;


public class DeliTracVO {

    private int d_no;
    private String dep_time;
    private String hub_arr;
    private String hub_dep;
    private String del_comp;
    private String hub_name;
    
	public int getD_no() {
		return d_no;
	}



	public void setD_no(int d_no) {
		this.d_no = d_no;
	}



	public String getDep_time() {
		return dep_time;
	}



	public void setDep_time(String dep_time) {
		this.dep_time = dep_time;
	}



	public String getHub_arr() {
		return hub_arr;
	}



	public void setHub_arr(String hub_arr) {
		this.hub_arr = hub_arr;
	}



	public String getHub_dep() {
		return hub_dep;
	}



	public void setHub_dep(String hub_dep) {
		this.hub_dep = hub_dep;
	}



	public String getDel_comp() {
		return del_comp;
	}



	public void setDel_comp(String del_comp) {
		this.del_comp = del_comp;
	}



	public String getHub_name() {
		return hub_name;
	}



	public void setHub_name(String hub_name) {
		this.hub_name = hub_name;
	}



	@Override
	public String toString() {
		return "DeliTracVO [d_no=" + d_no + ", dep_time=" + dep_time + ", hub_arr=" + hub_arr + ", hub_dep=" + hub_dep
				+ ", del_comp=" + del_comp + ", hub_name=" + hub_name + "]";
	}
	
    
}
