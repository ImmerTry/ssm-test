package com.ssm.maven.core.controller;

import com.ssm.maven.core.pojo.Picture;
import com.ssm.maven.core.service.PictureService;
import com.ssm.maven.core.util.LayuiRtn;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/picture")
public class PictureController {

    @Resource
    private PictureService pictureService;

    @RequestMapping("/save")
    @ResponseBody
    public Map<String, Object> savePictureInfo(Picture picture) {
        Map<String, Object> map = new HashMap<>();
        int count = pictureService.savePicture(picture);
        if (count > 0) {
            map.put("success", true);
        } else {
            map.put("success", false);
        }
        return map;
    }

    @RequestMapping("/upload")
    @ResponseBody
    public Object savePicture(MultipartFile file, HttpServletRequest request) {
        String desFilePath = "";
        String oriName = "";
        Map<String, String> dataMap = new HashMap<>();
        try {
            // 1.获取原文件名
            oriName = file.getOriginalFilename();
            // 2.获取原文件图片后缀，以最后的.作为截取(.jpg)
            String extName = oriName.substring(oriName.lastIndexOf("."));
            // 3.生成自定义的新文件名，这里以UUID.jpg|png|xxx作为格式（可选操作，也可以不自定义新文件名）
            String uuid = UUID.randomUUID().toString();
            String newName = uuid + extName;
            // 4.获取要保存的路径文件夹
            String realPath = request.getServletContext().getRealPath("upload/");
            // 5.保存图片
            desFilePath = realPath + "\\" + newName;
            File desFile = new File(desFilePath);
            file.transferTo(desFile);
            System.out.println(desFilePath);
            // 6.返回保存结果信息
            dataMap.put("src", "upload/" + newName);
            return new LayuiRtn(0, oriName + "上传成功！", 0, dataMap);
        } catch (IllegalStateException e) {
            System.out.println(desFilePath + "图片保存失败");
            return new LayuiRtn(1);
        } catch (IOException e) {
            System.out.println(desFilePath + "图片保存失败--IO异常");
            return new LayuiRtn(1);
        }
    }
}
