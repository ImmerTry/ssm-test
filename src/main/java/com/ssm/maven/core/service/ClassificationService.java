package com.ssm.maven.core.service;

import com.ssm.maven.core.pojo.Classification;

import java.util.List;
import java.util.Map;

public interface ClassificationService {
    /**
     * 添加分类
     * @param classification
     * @return
     */
    int saveClassification(Classification classification);

    /**
     * 删除分类
     * @param id
     * @return
     */
    int deleteClassification(int id);

    /**
     * 更新分类
     * @param classification
     * @return
     */
    int updateClassification(Classification classification);

    /**
     * 获取分类列表信息
     * @return
     */
    List<Classification> getClaList();

    /**
     * 根据 claId 获取对应的分类信息
     * @param claId
     * @return
     */
    Classification getClaById(int claId);

    /**
     * 分页查询
     * @return
     * @throws Exception
     */
    List<Map<String,Object>> findAll(int pageNum, int pageSize) throws Exception;
}
