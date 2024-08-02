package org.hj.model;

public class BuyVO {
  private String id; 
  private String name;
  private int price;
  private int count;
  private String userId;
  private int basket;
  
  

  
  public int getBasket() {
    return basket;
  }
  public void setBasket(int basket) {
    this.basket = basket;
  }
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public int getPrice() {
    return price;
  }
  public void setPrice(int price) {
    this.price = price;
  }
  public int getCount() {
    return count;
  }
  public void setCount(int count) {
    this.count = count;
  }
  public String getUserId() {
    return userId;
  }
  public void setUserId(String userId) {
    this.userId = userId;
  }
  @Override
  public String toString() {
      return "BuyVO{" +
              "id='" + id + '\'' +
              "name='" + name + '\'' +
              ", price=" + price +
              ", count=" + count +
              ", userId='" + userId + '\'' +
              '}';
  }
  
}
