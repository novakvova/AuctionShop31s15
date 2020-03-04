package shop.abstracts;

import shop.dto.UserDTO;
import shop.entities.User;
import shop.validation.EmailExistsException;

public interface IRegistrationService {

	 User registerNewUserAccount(UserDTO accountDto)     
		      throws EmailExistsException;
}
