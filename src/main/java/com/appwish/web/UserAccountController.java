package com.appwish.web;
import com.appwish.domain.UserAccount;

import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RooWebJson(jsonObject = UserAccount.class)
@Controller
@RequestMapping("/useraccounts")
public class UserAccountController {
	
	@RequestMapping(value="getvalidation", method=RequestMethod.GET)
	public int getValidation(@ModelAttribute String email){
		if (this.userAccountRepository.findByEmail(email).size() == 0){
			return 0;
		}
		else{
			return 1;
		}

	}
}
