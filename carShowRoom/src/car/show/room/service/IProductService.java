package car.show.room.service;

import java.util.List;
import java.util.Set;

import car.show.room.pojo.Category;
import car.show.room.pojo.Product;
import car.show.room.pojo.ProductDTO;
import car.show.room.pojo.product.ProductEditDTO;

public interface IProductService {
	
	 Product AddProduct(ProductDTO productdto);     

	 //List<Category> GetAllCategories();
	 List<Product> GetAllProducts();
	 Product GetById(long id);
	 void Delete(long id);
	 void Update(ProductEditDTO productDTO);
}
