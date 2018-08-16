package com.ssm.maven.core.dao;

import com.ssm.maven.core.pojo.Item;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ItemDAO {
    /**
     * 显示所有商品信息
     * @return
     */
    List<Item> getItemList(int classId);

    /**
     * 添加商品
     * @param item
     */
    int saveItem(@Param("item") Item item);

    /**
     * 删除商品（根据id）
     * @param id
     * @return
     */
    int deleteItem(@Param("id") String id);

    /**
     * 更新商品
     * @param item
     * @return
     */
    int updateItem(@Param("item") Item item);

    /**
     * 查找特定商品（根据id）
     * @param id
     * @return
     */
    Item findItemById(@Param("id")String id);

    /**
     * 查询获取分页 填充数据
     * @return
     */
    List<Map<String,Object>> getPage();
}
