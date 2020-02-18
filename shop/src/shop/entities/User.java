package shop.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tblUsers")
public class User implements Serializable {
 
    private static final long serialVersionUID = 1L;
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
    private int id;
    
    @Column(name = "email", length = 50, nullable = false)
    private String email;
       
    @Column(name = "password", length = 50, nullable = false)
    private String password;
    
    public User() {
		
	}

	public User(String username, String password) {
		super();
		this.email = username;
		this.password = password;
	}

	public long getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
	
	public boolean match(String name, String password) {
        return this.email.equals(name) && this.password.equals(password);
    }
    
}