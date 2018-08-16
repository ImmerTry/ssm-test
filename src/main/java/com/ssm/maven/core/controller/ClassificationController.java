package com.ssm.maven.core.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.maven.core.pojo.Classification;
import com.ssm.maven.core.service.ClassificationService;
import com.ssm.maven.core.util.StringUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/cla")
public class ClassificationController {
    @Resource
    private ClassificationService claService;


    @RequestMapping("/show")
    @ResponseBody
    public Map<String, Object> showCla() {
        Map<String, Object> map = new HashMap<>();
        List<Classification> claLists = claService.getClaList();
        map.put("claLists", claLists);
        // System.out.println(claLists);
        return map;
    }

    @RequestMapping("/save")
    @ResponseBody
    public Map<String, Object> saveClassification(Classification cla, HttpServletRequest request) {

        claService.saveClassification(cla);
        Map<String, Object> map = new HashMap<>();
        map.put("msg", "成功");
        return map;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Map<String, Object> editClassification(Classification cla) {

        Map<String, Object> map = new HashMap<>();
        if (cla.getClassId() == 0) {
            map.put("msg", "显示失败");
        } else {
            cla = claService.getClaById(cla.getClassId());
            map.put("msg", "显示成功");
            map.put("editCla", cla);
        }
        return map;
    }

    @RequestMapping("/update")
    @ResponseBody
    public Map<String, Object> updateClassification(Classification cla) {

        Map<String, Object> map = new HashMap<>();
        int result = claService.updateClassification(cla);

        if (result > 0) {
            map.put("msg", "更新成功");
        } else {
            map.put("msg", "更新失败");
        }
        return map;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Map<String, Object> deleteClassification(Classification cla) {

        Map<String, Object> map = new HashMap<>();
        int cid = cla.getClassId();
        int result = claService.deleteClassification(cid);

        if (result == 0) {
            map.put("msg", "删除失败");
        } else {
            map.put("msg", "删除成功");
        }
        return map;
    }

    @RequestMapping("/getClaById")
    @ResponseBody
    public Classification getClaById(int classId) {
        Classification classification = claService.getClaById(classId);
        return classification;
    }

    @RequestMapping("/getPage")
    @ResponseBody
    public PageInfo<Map<String, Object>> getPage(@RequestParam Map condition) {


        int pageNum = 1;
        if (StringUtil.isNotEmpty((String) condition.get("pageNum"))) {
            pageNum = Integer.parseInt((String) condition.get("pageNum"));
        }
        int pageSize = 10;
        if (StringUtil.isNotEmpty((String) condition.get("pageSize"))) {
            pageSize = Integer.parseInt((String) condition.get("pageSize"));
        }
        //开始分页
        List<Map<String, Object>> pageInfoByCondition = null;
        try {
            pageInfoByCondition = claService.findAll(pageNum, pageSize);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

        PageInfo<Map<String, Object>> pageInfo = new PageInfo<>(pageInfoByCondition);
        return pageInfo;
    }
}
