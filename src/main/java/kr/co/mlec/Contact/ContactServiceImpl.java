package kr.co.mlec.Contact;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.VO.ContactVO;

@Service
public class ContactServiceImpl implements ContactService {

		@Autowired
		private ContactDAO contactDAO;

		@Override
		public int insertMessage(ContactVO contact) throws Exception {
			return contactDAO.insertMessage(contact);
		}
}
