package com.ssm.maven.core.service.impl;

import com.github.pagehelper.PageHelper;
import com.ssm.maven.core.dao.ItemDAO;
import com.ssm.maven.core.pojo.Item;
import com.ssm.maven.core.service.ItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("itemService")
public class ItemServiceImpl implements ItemService {

    @Resource
    private ItemDAO itemDAO;
    @Override
    public List<Item> getItemList(int classId) {
        return itemDAO.getItemList(classId);
    }

    @Override
    public int saveItem(Item item) {
        return itemDAO.saveItem(item);
    }

    @Override
    public int deleteItem(String id) {
        return itemDAO.deleteItem(id);
    }

    @Override
    public int updateItem(Item item) {
        return itemDAO.updateItem(item);
    }

    @Override
    public Item findItemById(String id) {
        return itemDAO.findItemById(id);
    }

    @Override
    public List<Map<String, Object>> getPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return itemDAO.getPage();
    }
}
