package car.show.room.pojo;

public class ProductDTO {

	private long id;
	private String name;

	public ProductDTO(long id, String name, String price, String description, String image, String category) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
		this.image = image;
		this.category = category;
	}
	public ProductDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String price;

	private String description;

	private String image;

	private String category;

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
		return "ProductDTO [id=" + id + ", name=" + name + ", price=" + price + ", description=" + description
				+ ", image=" + image + ", category=" + category + "]";
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

}

