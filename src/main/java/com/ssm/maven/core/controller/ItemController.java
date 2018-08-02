package com.ssm.maven.core.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.maven.core.pojo.Item;
import com.ssm.maven.core.service.ItemService;
import com.ssm.maven.core.util.StringUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/item")
public class ItemController {

    @Resource
    private ItemService itemService;

    @RequestMapping("/show")
    @ResponseBody
    public String showItemList() {
        return "fruit";
    }

    /**
     * 添加
     *
     * @param item
     * @return
     */
    @RequestMapping("/save")
    @ResponseBody
    public Map<String, Object> saveItem(Item item) {
        Map<String, Object> map = new HashMap<>();

        int count = itemService.saveItem(item);
        if (count > 0) {
            map.put("success", true);
        } else {
            map.put("success", false);
        }
        return map;
    }

    @RequestMapping("delete")
    @ResponseBody
    public Map<String, Object> deleteItem(String itemId) {

        Map<String, Object> map = new HashMap<>();

        int count = itemService.deleteItem(itemId);
        if (count > 0) {
            map.put("success", true);
        } else {
            map.put("success", false);
        }
        return map;
    }


    /**
     * 分页
     *
     * @param condition
     * @return
     */
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
            pageInfoByCondition = itemService.getPage(pageNum, pageSize);
        } catch (Exception e) {
            e.printStackTrace();
        }

        PageInfo<Map<String, Object>> pageInfo = new PageInfo<>(pageInfoByCondition);
        return pageInfo;
    }
}
