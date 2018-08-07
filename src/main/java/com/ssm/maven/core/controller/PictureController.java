package com.ssm.maven.core.controller;

import com.ssm.maven.core.service.PictureService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/picture")
public class PictureController {

    @Resource
    private PictureService pictureService;

    @RequestMapping("/save")
    @ResponseBody
    public Map<String, Object> savePicture() {
        Map<String, Object> map = new HashMap<>();


        return map;
    }
}
