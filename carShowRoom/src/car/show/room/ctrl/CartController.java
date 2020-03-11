package car.show.room.ctrl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import car.show.room.pojo.Item;
import car.show.room.pojo.Product;
import car.show.room.pojo.User;
import car.show.room.service.ProductService;
import car.show.room.service.RegistrationService;

@Controller
@RequestMapping(value = "cart")
public class CartController {

	@Autowired
	private ProductService productService;
	@Autowired
	private RegistrationService registerSevice;
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipalName = authentication.getName();
		System.out.println("user auth"+currentPrincipalName);
		model.addAttribute("user",registerSevice.findByUsername(currentPrincipalName) != null ? registerSevice.findByUsername(currentPrincipalName):new User());
		return "cart/index";
	}

	@RequestMapping(value = "buy/{id}", method = RequestMethod.GET)
	public String buy(@PathVariable("id") String id, HttpSession session) {
		//Product productModel = new Product();
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(productService.GetById(Long.parseLong(id)), 1));
			session.setAttribute("cart", cart);
		} else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = this.exists(id, cart);
			if (index == -1) {
				cart.add(new Item(productService.GetById(Long.parseLong(id)), 1));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
		}
		
		
		return "redirect:/cart/index";
	}

	@RequestMapping(value = "remove/{id}", method = RequestMethod.GET)
	public String remove(@PathVariable("id") String id, HttpSession session) {
		//ProductModel productModel = new ProductModel();
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "redirect:/cart/index";
	}

	private int exists(String id, List<Item> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getId().toString().equalsIgnoreCase(id.toString())) {
				return i;
			}
		}
		return -1;
	}

}