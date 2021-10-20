package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.bean.CartItem;
import ptithcm.entity.Product;

@Controller
@Transactional
@RequestMapping("/cart")
public class CartController {
	@Autowired
	SessionFactory factory;

	List<CartItem> list = new ArrayList<CartItem>();

	@RequestMapping()
	public String cart(ModelMap model) {
		model.addAttribute("tongTien", this.tinhTongtien(list));
		return "home/cart";
	}

	@ModelAttribute("listCart")
	public List<CartItem> getListCart() {
		return list;
	}

	public float tinhTongtien(List<CartItem> list) {
		float tongTien = 0;
		for (CartItem item : list) {
			tongTien = tongTien + item.getPrice() * item.getAmount();
		}
		return tongTien;
	}

	@RequestMapping(value = "add/{idProduct}")
	public String giohang(ModelMap model,
			@PathVariable("idProduct") int idProd, 
			@RequestParam("sl") int amount) {
		if (amount <= 0) {
			return "home/cart";
		}
		try {
			Session session = factory.getCurrentSession();
			Product prod = (Product) session.get(Product.class, idProd);
			boolean isExist = false;
			for (CartItem item : list) {
				if (item.getId() == prod.getIdProduct()) {
					item.setAmount(item.getAmount() + amount);
					isExist = true;
					break;
				}
			}
			if (!isExist) {
				CartItem newItem = new CartItem();
				newItem.setId(prod.getIdProduct());
				newItem.setName(prod.getName());
				newItem.setPrice(prod.getPrice());
				newItem.setAmount(amount);
				newItem.setImage(prod.getImage());
				list.add(newItem);
			}
			model.addAttribute("tongTien", this.tinhTongtien(list));
		} catch (Exception e) {
			return "redirect:/cart.htm";
		}
		return "home/cart";
	}

	@RequestMapping("deleteItem")
	public String deleteItem(ModelMap model, @RequestParam("id") int idItem) {
		int index = 0;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getId() == idItem) {
				index = i;
			}
		}
		list.remove(index);
		model.addAttribute("tongTien", this.tinhTongtien(list));
		return "home/cart";
	}

}
