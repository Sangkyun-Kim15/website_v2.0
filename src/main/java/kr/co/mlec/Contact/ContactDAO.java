package kr.co.mlec.Contact;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.VO.ContactVO;

@Repository
public class ContactDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int insertMessage(ContactVO contact) {
		return sqlSessionTemplate.insert("kr.co.mlec.Contact.ContactDAO.insertMessage", contact);
	}
}
