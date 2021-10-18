package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.bean.CartItem;
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

	List<CartItem> list = new ArrayList<CartItem>();

	@ModelAttribute("listGioHang")
	public List<CartItem> getListGioHang() {
		return list;
	}

	public float tinhTongtien(List<CartItem> list) {
		float tongTien = 0;
		for (CartItem item : list) {
			tongTien = tongTien + item.getPrice() * item.getAmount();
		}
		return tongTien;
	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(ModelMap modelMap) {
		return "home/cart";
	}

	@Autowired
	private SessionFactory sessionFactory;

	public Product findProduct(int code) {
		Session session = sessionFactory.getCurrentSession();
		Criteria crit = session.createCriteria(Product.class);
		crit.add(Restrictions.eq("code", code));
		return (Product) crit.uniqueResult();
	}
	
	@RequestMapping("/cart")
	public String index1(ModelMap modelMap){
		return "home/cart";
	}
	
	@RequestMapping(value = "/cart/add")
	public String giohang(ModelMap model,@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("gia") float gia,
			@RequestParam("image") String image, HttpSession se,@RequestParam("soLuong") int soluong, HttpServletRequest rq) {
		boolean isExist = false;
		for (CartItem item : list) {
			if (item.getId() == id) {
				item.setAmount(item.getAmount() + soluong);
				isExist = true;
				break;
			}
		}
		if (!isExist) {
			CartItem ghi = new CartItem();
			ghi.setId(id);
			ghi.setName(name);
			ghi.setPrice(gia);
			ghi.setAmount(soluong);
			ghi.setImage(image);
			list.add(ghi);
		}
		model.addAttribute("tongTien", this.tinhTongtien(list));
		return "home/cart";
	}
	
	@RequestMapping("deletegh")
	public String deleteGh(ModelMap model, @RequestParam("idSanPham") int idSanPham) {
		int index = 0;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getId() == idSanPham) {
				index = i;
			}
		}
		list.remove(index);
		model.addAttribute("tongTien", this.tinhTongtien(list));
		return "home/cart";
	}
}
