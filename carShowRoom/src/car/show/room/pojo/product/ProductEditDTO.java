package car.show.room.pojo.product;

import java.util.List;

import car.show.room.pojo.Category;

public class ProductEditDTO {

	private long id;
	private String name;
	
	public List<Category> categories;

	public ProductEditDTO(long id, String name, String price, String description, String image, String category) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
		this.image = image;
		this.category_id = category;
	}
	public ProductEditDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String price;

	private String description;

	private String image;

	private String category_id;

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}
	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "ProductDTO [name=" + name + ", price=" + price + ", description=" + description + ", image=" + image
				+ ", category=" + category_id + "]";
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	public List<Category> getCategories() {
		return categories;
	}
	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	

}

