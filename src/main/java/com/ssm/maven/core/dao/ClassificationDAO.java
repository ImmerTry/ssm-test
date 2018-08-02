package com.ssm.maven.core.dao;

import com.ssm.maven.core.pojo.Classification;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ClassificationDAO {
    /**
     * 添加分类
     * @param classification
     * @return
     */
    int saveClassification(@Param("classification") Classification classification);

    /**
     * 删除分类
     * @param id
     * @return
     */
    int deleteClassification(@Param("id") int id);

    /**
     * 更新分类
     * @param classification
     * @return
     */
    int updateClassification(@Param("classification") Classification classification);

    /**
     * 获取所有分类信息列表
     * @return
     */
    List<Classification> getClaList();

    /**
     * 根据claId查询所对应的分类信息
     * @param claId
     * @return
     */
    Classification getClaById(@Param("claId") int claId);

    /**
     * 查询所有的用户
     * @return
     * @throws Exception
     */
    List<Map<String,Object>> findAll() throws Exception;
}
