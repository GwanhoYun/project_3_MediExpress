package org.hj.model;

public class Product_OrderPageVO {
         private int pno;
         private String pname;
         private int pprice;
         private int pnum;
         public int getPno() {
           return pno;
         }
         public void setPno(int pno) {
           this.pno = pno;
         } 
         public String getPname() {
           return pname;
         }
         public void setPname(String pname) {
           this.pname = pname;
         }
         public int getPprice() {
           return pprice;
         }
         public void setPprice(int pprice) {
           this.pprice = pprice;
         }
         public int getPnum() {
           return pnum;
         }
         public void setPnum(int pnum) {
           this.pnum = pnum;
         }
         
         @Override
         public String toString() {
           return "Product_OrderPageVO [pno=" + pno + ", pname=" + pname + ", pprice=" + pprice + ", pnum=" + pnum + "]";
         }


}
