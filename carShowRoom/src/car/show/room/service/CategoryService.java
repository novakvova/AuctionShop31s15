package car.show.room.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import car.show.room.pojo.Category;
import car.show.room.pojo.CategoryDTO;

public class CategoryService {
	private Session session;

	public CategoryService(SessionFactory sessionFactory) {
		this.session = sessionFactory.openSession();
	}

	public List<Category> GetAllCategories() {
		    return session.createQuery("SELECT a FROM Category a", Category.class).getResultList();     
	}
	
	public Category Add(CategoryDTO catDTO) {
		session.beginTransaction();
		Category cat = new Category();
		cat.setName(catDTO.getName());
		cat.setDescription(catDTO.getDescription());
		cat.setImage(catDTO.getImage());
		//Long id = (Long)session.save(cat);
		session.save(cat);
		session.getTransaction().commit();
		return cat;
	}
	
	public Category GetById(long id) {
		session.beginTransaction();
		Category cat = (Category)session.get(Category.class, id);
		session.getTransaction().commit();
		return cat;
	}
	
	public void Delete(long id) {
		Category cat =  this.GetById(id);
		session.beginTransaction();
		session.delete(cat);
		session.getTransaction().commit();
	}
	
	public void Update(long id, String name, String image, String description) {
		Category cat =  this.GetById(id);
		session.beginTransaction();
		cat.setName(name);
		cat.setImage(image);
		cat.setDescription(description);
		session.update(cat);
		session.getTransaction().commit();
	}
	
	
}
