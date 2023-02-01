package member.model;

import java.util.Date;

public class Member { // 자바빈(value object)

	private String email;
	private String name;
	private String password;
	private Date regDate;

	public Member(String email, String name, String password, Date regDate) {
		this.email = email;
		this.name = name;
		this.password = password;
		this.regDate = regDate;
	}

	public String getEmail() {
		return email;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}
	
	public Date getRegDate() {
		return regDate;
	}
	
	public boolean matchPassword(String pwd) {
		return password.equals(pwd);
	}

	public void changePassword(String newPwd) {
		this.password = newPwd;
	}

}
