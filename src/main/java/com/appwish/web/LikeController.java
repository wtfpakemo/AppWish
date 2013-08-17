package com.appwish.web;
import com.appwish.domain.Like;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Like.class)
@Controller
@RequestMapping("/likes")
public class LikeController {
}
