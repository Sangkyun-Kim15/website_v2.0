package kr.co.mlec.Contact;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mlec.VO.ContactVO;

@Controller
@RequestMapping("/contact")
public class ContactController {

	@PostMapping("/send")
	public String sendMail(ContactVO contact) {
		if(contact.getName() == null || contact.getName().isEmpty()) {
			
		}
		return null;
	}
}
