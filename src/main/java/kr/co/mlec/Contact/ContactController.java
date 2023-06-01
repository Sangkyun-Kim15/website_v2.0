package kr.co.mlec.Contact;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mlec.VO.ContactVO;

@Controller
@RequestMapping("/contact")
public class ContactController {

	@Autowired
	private ContactService service;
	
	@RequestMapping("/insertMessage.json")
    @ResponseBody
    public String insertMessage(ContactVO contact) throws Exception {
		System.out.println(contact.getMessage());
		int result = service.insertMessage(contact);

        // Send email here

        if (result > 0) {
            return "success";
        } else {
            return "error";
        }
	}
}
