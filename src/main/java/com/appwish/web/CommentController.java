package com.appwish.web;
import com.appwish.domain.Comment;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Comment.class)
@Controller
@RequestMapping("/comments")
public class CommentController {
}
