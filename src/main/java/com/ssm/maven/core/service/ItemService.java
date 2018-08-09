package com.ssm.maven.core.service;

import com.ssm.maven.core.pojo.Item;

import java.util.List;
import java.util.Map;

public interface ItemService {
    /**
     * 查询所有信息
     * @return
     */
    List<Item> getItemList();

    /**
     * 添加商品
     * @param item
     * @return
     */
    int saveItem(Item item);

    /**
     * 删除商品（根据id）
     *
     * @param id
     * @return
     */
    int deleteItem(String id);

    /**
     * 更新商品
     *
     * @param item
     * @return
     */
    int updateItem(Item item);

    /**
     * 查找特定商品（根据id）
     *
     * @param id
     * @return
     */
    Item findItemById(String id);

    /**
     * 填充数据 获取分页
     * @param pageNum
     * @param pageSize
     * @return
     */
    List<Map<String,Object>> getPage(int pageNum, int pageSize);
}
