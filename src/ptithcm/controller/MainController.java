package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Product;


@Controller
@Transactional
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

	public List<Product> getFood() {
		Session session = factory.getCurrentSession();
		String hql = "From Product where type like '%Food%'";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		return list;
	}

	@RequestMapping(value = "food", method = RequestMethod.GET)
	public String doAn(HttpServletRequest request, ModelMap model, @ModelAttribute("product") Product product) {
		List<Product> products = this.getFood();
		@SuppressWarnings("unchecked")
		PagedListHolder pagedListHolder = new PagedListHolder(products);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(20);
		;
		pagedListHolder.setPageSize(4);
		model.addAttribute("pagedListHolder", pagedListHolder);

		return "home/foods";
	}
	
	public List<Product> getDrink() {
		Session session = factory.getCurrentSession();
		String hql = "From Product where type like '%Drink%'";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		return list;
	}

	@RequestMapping(value = "drink", method = RequestMethod.GET)
	public String nuoc(HttpServletRequest request, ModelMap model, @ModelAttribute("product") Product product) {
		List<Product> products = this.getDrink();
		@SuppressWarnings({ "unchecked", "rawtypes" })
		PagedListHolder pagedListHolder = new PagedListHolder(products);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(20);
		pagedListHolder.setPageSize(8);
		model.addAttribute("pagedListHolder", pagedListHolder);

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
