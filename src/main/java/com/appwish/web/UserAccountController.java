package com.appwish.web;
import com.appwish.domain.UserAccount;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = UserAccount.class)
@Controller
@RequestMapping("/useraccounts")
public class UserAccountController {
}