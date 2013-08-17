package com.appwish.web;
import com.appwish.domain.Idea;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Idea.class)
@Controller
@RequestMapping("/ideas")
public class IdeaController {
}
