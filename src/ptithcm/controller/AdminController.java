package ptithcm.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ptithcm.entity.Product;
import ptithcm.entity.User;




@Transactional
@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	SessionFactory factory;
	

	@RequestMapping("index")
	public String index(ModelMap model){
		return "admin/index";
	}
	
	//==============Quản lý người dùng==========================
	/*
	 * @RequestMapping("user") public String user(ModelMap model) { Session session
	 * = factory.getCurrentSession(); String hql = "From User"; Query query =
	 * session.createQuery(hql);
	 * 
	 * @SuppressWarnings("unchecked") List<User> list = query.list();
	 * model.addAttribute("users", list); return "user/index"; }
	 */
	public List<User> getUser() {
		Session se = factory.getCurrentSession();
		String hql = "from User";
		Query query = se.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		return list;
	}

	@RequestMapping(value = "user", method = RequestMethod.GET)
	public String user(HttpServletRequest request, ModelMap model, @ModelAttribute("product") Product product) {
		List<User> users = this.getUser();
		@SuppressWarnings({ "unchecked", "rawtypes" })
		PagedListHolder pagedListHolder = new PagedListHolder(users);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(20);
		pagedListHolder.setPageSize(2);
		model.addAttribute("pagedListHolder", pagedListHolder);

		return "user/index";
	}
	
	@RequestMapping(value="insertUser", method=RequestMethod.GET)
	public String insertUser(ModelMap model){
		model.addAttribute("user", new User());
		return "user/insert";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="insertUser",method=RequestMethod.POST)
	public String insertUser(ModelMap model, @ModelAttribute("user")User user,
			BindingResult errors){
		Session session = factory.getCurrentSession();
		String hql = "FROM User " + "WHERE username like '%"+user.getUsername()+"%'";
		Query query = session.createQuery(hql);
		List<User> list = query.list();	
		if(user.getName().trim().length()==0){
			errors.rejectValue("name", "user", "Vui lòng nhập tên!");
		}
		if(user.getAddress().trim().length()==0){
			errors.rejectValue("address", "user", "Vui lòng nhập địa chỉ!");
		}
		if(user.getPhone().trim().length()==0){
			errors.rejectValue("phone", "user", "Vui lòng nhập số điện thoại!");
		}
		if(user.getEmail().trim().length()==0){
			errors.rejectValue("email", "user", "Vui lòng nhập email !");
		}
		if(user.getPassword().trim().length()==0){
			errors.rejectValue("password", "user", "Vui lòng nhập mật khẩu !");
		}
		if(user.getUsername().trim().length()==0){
			errors.rejectValue("username", "user", "Vui lòng nhập tài khoản !");
		}
		else if(list.size()!=0){
			errors.rejectValue("username", "user", "Tài khoản đã tồn tại!");
		}
		
		try
			{
				if (errors.hasErrors()) 
				{
					model.addAttribute("message", "Vui lòng sửa các lỗi");
				} 
				else
				{
					session.save(user);
					model.addAttribute("message", "Thêm thành công");
					return "redirect:/admin/user.htm";
				}
			}
		catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("message", "Thêm thất bại");
		}
		return "user/insert";
	}
	
	@RequestMapping(value = "updatekh/{idUser}", method = RequestMethod.GET)
	public String updatekh(ModelMap model, @PathVariable("idUser")Integer s) {
		Session session = factory.openSession();
		User user = (User) session.get(User.class, s);
		model.addAttribute("users", user);
		return "user/update";
	}
	
	@RequestMapping(value = "updatekh/{idUser}", method = RequestMethod.POST)
	public String updatekh(ModelMap model, @ModelAttribute("users") User users
			, BindingResult errors) {
		Session session = factory.getCurrentSession();
		if(users.getName().trim().length()==0){
			errors.rejectValue("name", "users", "Vui lòng nhập tên !");
		}
		if(users.getAddress().trim().length()==0){
			errors.rejectValue("address", "users", "Vui lòng nhập địa chỉ !");
		}
		if(users.getPhone().trim().length()==0){
			errors.rejectValue("phone", "users", "Vui lòng nhập số điện thoại !");
		}
		if(users.getEmail().trim().length()==0){
			errors.rejectValue("email", "users", "Vui lòng nhập email !");
		}
		if(users.getPassword().trim().length()==0){
			errors.rejectValue("password", "users", "Vui lòng nhập mật khẩu !");
		}
		else{
		try
			{
				if (errors.hasErrors()) 
				{
					model.addAttribute("message", "Vui lòng sửa các lỗi sau");
				} 
				else{
					session.update(users);
					model.addAttribute("message", "Sửa thành công");
					return "redirect:/admin/user.htm";
				}
			}
			catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("message", "Sửa thất bại");
			}
		}
		return "user/update";
	}
	
	@SuppressWarnings("finally")
	@RequestMapping(value = "deletekh/{idUser}", method = RequestMethod.GET)
	public String deletekh(ModelMap model, @PathVariable("idUser")Integer s) {
		Session se = factory.openSession();
		Transaction t = se.beginTransaction();
		User user = (User) se.get(User.class, s);
		try {
			se.delete(user);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		}
		finally{
			return "redirect:/admin/user.htm";
		}
	}
	
	//==============Quản lý sản phẩm==========================
	/*
	 * @RequestMapping("product") public String dssp(ModelMap model){ Session se =
	 * factory.getCurrentSession(); String hql = "from Product"; Query query =
	 * se.createQuery(hql);
	 * 
	 * @SuppressWarnings("unchecked") List<Product> list = query.list();
	 * model.addAttribute("products", list); return "product/index"; }
	 */
		
	public List<Product> getProduct() {
		Session se = factory.getCurrentSession();
		String hql = "from Product";
		Query query = se.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		return list;
	}

	@RequestMapping(value = "product", method = RequestMethod.GET)
	public String sanpham(HttpServletRequest request, ModelMap model, @ModelAttribute("product") Product product) {
		List<Product> products = this.getProduct();
		@SuppressWarnings({ "unchecked", "rawtypes" })
		PagedListHolder pagedListHolder = new PagedListHolder(products);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(20);
		pagedListHolder.setPageSize(8);
		model.addAttribute("pagedListHolder", pagedListHolder);

		return "product/index";
	}
	
	
	@Autowired
	ServletContext context;
	
	@RequestMapping(value="insertsp", method=RequestMethod.GET)
	public String insertsp(ModelMap model){
		model.addAttribute("product", new Product());
		return "product/insert";
	}
	
	@RequestMapping(value="insertsp", method=RequestMethod.POST)
	public String insertsp(ModelMap model, @ModelAttribute("product")Product product,
			BindingResult errors,
			@RequestParam("image") MultipartFile image){
		Session se= factory.getCurrentSession();
		String hql = "FROM Product " + "WHERE name like '%"+product.getName()+"%'";
		Query query = se.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		if(product.getName().trim().length()==0){
			errors.rejectValue("name", "product", "Vui lòng nhập tên sản phẩm !");
		}
		else if(list.size()!=0){
			errors.rejectValue("name", "product", "Tên sản phẩm đã tồn tại !");
		}
		if(product.getPrice()==null){
			errors.rejectValue("price", "product", "Vui lòng nhập giá sản phẩm !");
		}
		if(product.getType()==null){
			errors.rejectValue("type", "product", "Vui lòng nhập loại sản phẩm !");
		}
		if(product.getNumber() == null){
			errors.rejectValue("number", "product", "Vui lòng nhập số lượng !");
		}
		else{
			try {
					String path = context.getRealPath("resources/img/"+image.getOriginalFilename()) ;
					image.transferTo(new File(path));
					
					product.setImage(image.getOriginalFilename());
					se.save(product);
					model.addAttribute("message", "Thêm thành công");
					return "redirect:/admin/product.htm";
			} catch (Exception e) {
				model.addAttribute("message", "Thêm thất bại");
			}
		}
		return "product/insert";
	}
	
	@RequestMapping(value = "updateProduct/{idProduct}", method = RequestMethod.GET)
	public String updateProduct(ModelMap model, @PathVariable("idProduct")Integer s) {
		Session session = factory.openSession();
		Product prod = (Product) session.get(Product.class, s);
		model.addAttribute("products", prod);
		return "product/update";
	}
	
	@RequestMapping(value = "updateProduct", method = RequestMethod.POST)
	public String updateProduct(ModelMap model, @ModelAttribute("products")Product products,
			BindingResult errors){
		Session session = factory.getCurrentSession();
		if(products.getName().trim().length()==0){
			errors.rejectValue("name", "products", "Vui lòng nhập tên sản phẩm !");
		}
		if(products.getPrice()==null){
			errors.rejectValue("price", "products", "Vui lòng nhập giá sản phẩm !");
		}
		if(products.getNumber() == null){
			errors.rejectValue("number", "products", "Vui lòng nhập số lượng !");
		}
		else{
			try
			{
				if (errors.hasErrors()) 
				{
					model.addAttribute("message", "Vui lòng sửa các lỗi");
				} 
				else
				{
					session.update(products);
					model.addAttribute("message", "Sửa thành công");
					return "redirect:/admin/product.htm";
				}
			}
			catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("message", "Sửa thất bại");
			}
		}
		return "product/update";
	}
	
	@SuppressWarnings("finally")
	@RequestMapping(value = "deleteProduct/{idProduct}", method = RequestMethod.GET)
	public String deleteProduct(ModelMap model, @PathVariable("idProduct") int maHH) {
		Session se = factory.openSession();
		Transaction t = se.beginTransaction();
		Product pro = (Product) se.get(Product.class, maHH);
		try {
			se.delete(pro);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		}
		finally{
			return "redirect:/admin/product.htm";
		}
		
	}
}
