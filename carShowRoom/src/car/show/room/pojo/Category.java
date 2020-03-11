package car.show.room.pojo;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_categories")
public class Category {
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "category_id")
	private Long id;
	@Column(name = "name", length = 50, nullable = false)
	private String name;
	@Column(name = "image", length = 50, nullable = false)
	private String image;
	@Column(name = "description", length = 200)
    private String description;

	@OneToMany
    @JoinColumn(name = "category_id") // we need to duplicate the physical information
    private Set<Product> posts;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Product> getPosts() {
		return posts;
	}

	public void setPosts(Set<Product> posts) {
		this.posts = posts;
	}
	

}
