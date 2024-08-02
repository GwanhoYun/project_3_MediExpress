package org.hj.model;

import java.util.Date;

public class OrderVO {
    private int o_no;
    private String o_id;
    private String o_address;
    private int p_no;
    private int o_num;
    private String o_Total;
    private Date o_date;

    public int getO_no() {
      return o_no;
    }
    public void setO_no(int o_no) {
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
    public int getP_no() {
      return p_no;
    }
    public void setP_no(int p_no) {
      this.p_no = p_no;
    }
    public int getO_num() {
      return o_num;
    }
    public void setO_num(int o_num) {
      this.o_num = o_num;
    }
    public String getO_Total() {
      return o_Total;
    }
    public void setO_Total(String o_Total) {
      this.o_Total = o_Total;
    }
    public Date getO_date() {
      return o_date;
    }
    public void setO_date(Date o_date) {
      this.o_date = o_date;
    }



}
