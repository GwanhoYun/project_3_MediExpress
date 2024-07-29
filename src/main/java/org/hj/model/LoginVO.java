package org.hj.model;

public class LoginVO {
    private String id;
    private String password;
    private String name; // name 필드 추가

    // 생성자, getter, setter 등 필요한 메서드 추가

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "LoginVO [id=" + id + ", password=" + password + ", name=" + name + "]"; // toString 수정
    }
}
