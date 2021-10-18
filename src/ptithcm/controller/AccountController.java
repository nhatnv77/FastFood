package ptithcm.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import ptithcm.entity.User;



@Transactional
@Controller
@RequestMapping("/account/")
public class AccountController {
	@Autowired
	SessionFactory factory;
	
	//Đăng nhập
	@RequestMapping(value="login", method= RequestMethod.GET)
	public String login(ModelMap model){
		model.addAttribute("user", new User());
		return "home/login";
	}
	
	@RequestMapping(value="login", method= RequestMethod.POST)
	public String login(ModelMap model, @ModelAttribute("user") User user,
			BindingResult errors, HttpSession session1){
		if(user.getUsername().equals("admin") && user.getPassword().equals("admin")){
			return "redirect:/admin/index.htm";
		}
		else if(user.getUsername().trim().length()==0){
			errors.rejectValue("username", "user", "Tên tài khoản không được trống !");
		}
		else if(user.getPassword().trim().length()==0){
			errors.rejectValue("password", "user", "Mật khẩu không được trống !");
		}
		else{
			try{
				Session session = factory.getCurrentSession();
				String hql ="FROM User user WHERE user.username ='"+user.getUsername()
				+"' AND user.password='"+user.getPassword()+"'";
				Query query = session.createQuery(hql);
				User u = (User) query.uniqueResult();
				if(u==null){
					model.addAttribute("message", "Sai Tên đăng nhập hoặc Mật khẩu");
					return "home/login";
				}
			session1.setAttribute("tk", user.getUsername());
			return "redirect:/home.htm";
		}
		catch(Exception ex){
			ex.printStackTrace();
			model.addAttribute("message", "Sai Tên đăng nhập hoặc Mật khẩu");
			return "login";
		}
		}
		return "home/login";
	}
	
	// Đăng kí tài khoản
		@RequestMapping(value="dangky",method=RequestMethod.GET)
		public String dangky(ModelMap model){
			model.addAttribute("user", new User());
			return "home/dangky";
		}
		
		@RequestMapping(value="dangky",method=RequestMethod.POST)
		public String dangky(ModelMap model,
			@ModelAttribute("user") User user,
			BindingResult errors){
			Session session = factory.getCurrentSession();
			String hql = "FROM User acc WHERE acc.username ='"+user.getUsername()
			+"'";
			Query query = session.createQuery(hql);
			User acc = (User) query.uniqueResult();
			if(acc!=null){
				model.addAttribute("message", "Tài khoản đã tồn tại !");
				return "home/dangky";
			}
			else if(user.getUsername().trim().length()==0){
				errors.rejectValue("username", "user", "Tên tài khoản không được trống !");
			}
			else if(user.getPassword().trim().length()==0){
				errors.rejectValue("password", "user", "Mật khẩu không được trống !");
			}
			else if(user.getEmail().trim().length()==0){
				errors.rejectValue("email", "user", "Email không được trống !");
			}
			else if(user.getName().trim().length()==0){
				errors.rejectValue("name", "user", "Tên không được trống !");
			}
			else if(user.getPhone().trim().length()==0){
				errors.rejectValue("phone", "user", "Vui lòng nhập số điện thoại !");
			}
			else if(user.getAddress().trim().length()==0){
				errors.rejectValue("address", "user", "Vui lòng nhập địa chỉ !");
			}
			else if(errors.hasErrors()){
				model.addAttribute("message", "Vui lòng sửa các lỗi sau đây !");
				return "home/dangky";
			}
			else{
				model.addAttribute("message", "Chúc mừng bạn đã nhập đúng !");
				try{
					Session session1 = factory.getCurrentSession();
					session1.save(user);
					model.addAttribute("message", "Thêm mới thành công !");
					return "home/login";
				}
				catch(Exception e){
					model.addAttribute("message", "Thêm mới thất bại !");
				}
			}
			return "home/dangky";
		}
		
		//Logout
		@RequestMapping(value="logout")
		public String logout(HttpSession session){
			session.setAttribute("tk", null);
			return "redirect:/home.htm";
		}
}
