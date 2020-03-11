package car.show.room.pojo;

import javax.persistence.Column;

public class UserDTO {

   


	@Override
	public String toString() {
		return "UserDTO [username=" + username + ", password=" + password + ", role=" + role + ", name=" + name
				+ ", surname=" + surname + ", delivery=" + delivery + ", phone=" + phone + "]";
	}



	private String username;

	private String password;
  
    private String role;
    
    

    public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getSurname() {
		return surname;
	}



	public void setSurname(String surname) {
		this.surname = surname;
	}



	public String getDelivery() {
		return delivery;
	}



	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	private String name;

    private String surname;
   
    private String delivery;

    private String phone;

	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



     
}
