package com.appwish.web;
import com.appwish.domain.Feature;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Feature.class)
@Controller
@RequestMapping("/features")
public class FeatureController {
}
