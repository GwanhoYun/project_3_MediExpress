package org.hj.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;

public class Medi_BoardVO {
    private int mediNo;
    private String mediName;
    private int mediTotal;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date mediIndate;

    private String mediCompany;
    private int mediSafetyInven;



    // Getters and Setters
    public int getMediNo() {
        return mediNo;
    }

    public void setMediNo(int mediNo) {
        this.mediNo = mediNo;
    }

    public String getMediName() {
        return mediName;
    }

    public void setMediName(String mediName) {
        this.mediName = mediName;
    }

    public int getMediTotal() {
        return mediTotal;
    }

    public void setMediTotal(int mediTotal) {
        this.mediTotal = mediTotal;
    }

    public Date getMediIndate() {
        return mediIndate;
    }

    public void setMediIndate(Date mediIndate) {
        this.mediIndate = mediIndate;
    }

    public String getMediCompany() {
        return mediCompany;
    }

    public void setMediCompany(String mediCompany) {
        this.mediCompany = mediCompany;
    }

    public int getMediSafetyInven() {
        return mediSafetyInven;
    }

    public void setMediSafetyInven(int mediSafetyInven) {
        this.mediSafetyInven = mediSafetyInven;
    }
    @Override
    public String toString() {
      return "Medi_BoardVO [mediNo=" + mediNo + ", mediName=" + mediName + ", mediTotal=" + mediTotal + ", mediIndate="
          + mediIndate + ", mediCompany=" + mediCompany + ", mediSafetyInven=" + mediSafetyInven + "]";
    }
}
