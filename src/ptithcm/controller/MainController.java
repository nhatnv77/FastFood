package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Product;

@Transactional
@Controller
public class MainController {
	@Autowired
	SessionFactory factory;

	@RequestMapping()
	public String home(ModelMap model) {
		return "redirect:/home.htm";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String index(ModelMap model) {
		return "home/index";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(ModelMap model) {
		return "home/contact";
	}

	@RequestMapping(value = "food", method = RequestMethod.GET)
	public String sanpham(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "From Product where type like '%Food%'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("foods", list);
		return "home/foods";
	}

	@RequestMapping(value = "drink", method = RequestMethod.GET)
	public String sanphamdrink(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "From Product where type like '%Drink%'";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("drinks", list);
		return "home/drinks";
	}

	@RequestMapping(value = "detail/{idProduct}", method = RequestMethod.GET)
	public String chitietsp(ModelMap model, @PathVariable("idProduct") int idProd) {
		Session session = factory.getCurrentSession();
		Product prod = (Product) session.get(Product.class, idProd);
		model.addAttribute("prod", prod);
		return "product/detail";
	}

}
