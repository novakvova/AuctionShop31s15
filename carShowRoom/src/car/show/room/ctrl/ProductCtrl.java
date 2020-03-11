package car.show.room.ctrl;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import car.show.room.pojo.*;
import car.show.room.pojo.product.ProductEditDTO;
import car.show.room.service.CategoryService;
import car.show.room.service.ProductService;

@Controller
@RequestMapping(value = "/admin")
public class ProductCtrl {
	// @Resource(name = "registrationService")
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@Autowired
	// private HttpServletRequest request;
	ServletContext context;

	@RequestMapping(value = "/products/add", method = RequestMethod.GET)
	public String showRegistrationForm(WebRequest request, Model model) {
		ProductDTO productDTO = new ProductDTO();
		model.addAttribute("product", productDTO);
		model.addAttribute("categories", categoryService.GetAllCategories());
		model.addAttribute("file", "");
		return "addproduct";
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String showAllProducts(WebRequest request, Model model) {
		model.addAttribute("products", productService.GetAllProducts());
		return "products";
	}

	@RequestMapping(value = "/products/add", method = RequestMethod.POST, consumes = { "multipart/form-data" })
	public String registerUserAccount(@RequestParam("image") MultipartFile file,
			@ModelAttribute("product") ProductDTO productDTO, BindingResult result, WebRequest request, Errors errors,
			HttpServletResponse response) throws IllegalStateException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String name = file.getOriginalFilename();
		long z = file.getSize();
		System.out.println("file size " + name + z);

		String filePath = context.getRealPath("/resources/images/"); // request.getServletContext().getRealPath("/uploads/");
		System.out.println(filePath + name);

		file.transferTo(new File(filePath + name));
		productDTO.setImage("../resources/images/"+name);
		System.out.println(productDTO.toString());
		Product prod = new Product();
		prod = createProduct(productDTO, result);
		return "redirect:/admin/products";
		

	}

	// admin/products/edit/1
	@RequestMapping(value = "/products/edit/{id}", method = RequestMethod.GET)
	public String showEditProductForm(@PathVariable("id") String id, WebRequest request, Model model) {
		ProductEditDTO productEditDTO = new ProductEditDTO();
		System.out.println("edit method; id=" + id);
		Product product = productService.GetById(Long.parseLong(id));
		productEditDTO.setId(product.getId());
		productEditDTO.setDescription(product.getDescription());
		productEditDTO.setName(product.getName());
		productEditDTO.setPrice(product.getPrice());
		productEditDTO.setImage(product.getImage());

		Long catId = product.getCategory().getId();
		productEditDTO.setCategory_id(catId.toString());
		productEditDTO.setCategories(categoryService.GetAllCategories());
		model.addAttribute("productEdit", productEditDTO);
		return "editproduct";
	}

	@RequestMapping(value = "/products/edit/{id}", method = RequestMethod.POST,consumes = { "multipart/form-data" })
	public String editProduct(@RequestParam("image") MultipartFile file,@PathVariable("id") String id, @ModelAttribute("productDTO") ProductEditDTO productDTO,
			BindingResult result, ModelMap model,HttpServletResponse response) throws IllegalStateException, IOException {
		System.out.println("id POST" + id);
		System.out.println("category id POST" + productDTO.getCategory_id());
		productDTO.setId(Long.valueOf(id));
		response.setContentType("text/html;charset=UTF-8");
		String name = file.getOriginalFilename();
		long z = file.getSize();
		System.out.println("file size " + name + z);

		String filePath = context.getRealPath("/resources/images/"); // request.getServletContext().getRealPath("/uploads/");
		System.out.println(filePath + name);
		
		if(!Files.exists(Paths.get(filePath + name))) { 
			file.transferTo(new File(filePath + name));
		}
	
		productDTO.setImage("../resources/images/"+name);
		System.out.println(productDTO.toString());
		
		
		
		System.out.println(productDTO.toString());
		productService.Update(productDTO);
		return "redirect:/admin/products";
	}

	@RequestMapping(value = "/products/delete/{id}", method = RequestMethod.GET)
	public String showDeleteProductForm(@PathVariable("id") String id, WebRequest request, Model model) {
		ProductEditDTO productEditDTO = new ProductEditDTO();
		System.out.println("delete method method; id=" + id);
		Product product = productService.GetById(Long.parseLong(id));
		productEditDTO.setId(product.getId());
		productEditDTO.setDescription(product.getDescription());
		productEditDTO.setName(product.getName());
		productEditDTO.setPrice(product.getPrice());
		productEditDTO.setImage(product.getImage());

		Long catId = product.getCategory().getId();
		productEditDTO.setCategory_id(catId.toString());
		productEditDTO.setCategories(categoryService.GetAllCategories());
		model.addAttribute("productDelete", productEditDTO);
		return "deleteproduct";
	}

	@RequestMapping(value = "/products/delete/{id}", method = RequestMethod.POST)
	public String deleteProduct(@PathVariable("id") String id, @ModelAttribute("productDTO") ProductEditDTO productDTO,
			BindingResult result, ModelMap model) {
		System.out.println("id" + id);
		long deleteId = Long.parseLong(id);
		productService.Delete(deleteId);
		return "redirect:/admin/products";
	}

	private Product createProduct(ProductDTO productDTO, BindingResult result) {
		Product prod = productService.AddProduct(productDTO);
		return prod;
	}

}
