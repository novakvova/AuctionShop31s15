package car.show.room.service;

import car.show.room.pojo.User;
import car.show.room.pojo.UserDTO;
import validation.EmailExistsException;

public interface IRegistrationService {

	 User registerNewUserAccount(UserDTO accountDto)     
		      throws EmailExistsException;
}
