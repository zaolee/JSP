// 이게 자바빈 생각하면 될듯
package chap08.member;

import java.util.Date;

public class MemberInfo {
	// 필드
	private String id;
	private String password;
	private String name;
	private Date registerDate;
	private String email;

	public String getId() {
		return id;
	}

	public void setId(String val) {
		this.id = val;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String val) {
		this.password = val;
	}

	public String getName() {
		return name;
	}

	public void setName(String val) {
		this.name = val;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date val) {
		this.registerDate = val;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String val) {
		this.email = val;
	}
}
