package ptithcm.controller;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/mailer/")
public class MailController {
	@RequestMapping("form")
	public String index() {
		return"home/contact";
	}
	
	@Autowired
	JavaMailSender mailer;
	@RequestMapping("send")
	public String send(ModelMap model,
			@RequestParam("from")String from,
			@RequestParam("subject") String subject,
			@RequestParam("body") String body,
			@RequestParam("to")String to) {
		model.addAttribute("message","Gửi mail thành công!");
		try {
			//Tạo mail
			MimeMessage mail= mailer.createMimeMessage();
			//Sử dụng lớp trợ giúp
			MimeMessageHelper helper= new MimeMessageHelper(mail);
			helper.setFrom(from,from);
			helper.setTo("n17dccn102@student.ptithcm.edu.vn");
			helper.setReplyTo(from,from);
			helper.setSubject(subject);
			helper.setText(body,true);
			//Gủi mail
			mailer.send(mail);
			
			
		}catch(Exception ex) {
			//model.addAttribute("message","Gửi email thất bại");
		}
		return "home/contact";
	}
}
