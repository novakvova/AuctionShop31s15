package shop.services;

import shop.entities.User;
import shop.entities.UserDTO;
import shop.validation.EmailExistsException;

public interface IRegistrationService {

	 User registerNewUserAccount(UserDTO accountDto)     
		      throws EmailExistsException;
}
