package com.ssm.maven.core.service.impl;

import com.github.pagehelper.PageHelper;
import com.ssm.maven.core.dao.ClassificationDAO;
import com.ssm.maven.core.pojo.Classification;
import com.ssm.maven.core.service.ClassificationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("classificationService")
public class ClassificationServiceImpl implements ClassificationService {

    @Resource
    private ClassificationDAO classificationDAO;
    @Override
    public int saveClassification(Classification classification) {
        return classificationDAO.saveClassification(classification);
    }

    @Override
    public int deleteClassification(int id) {
        return classificationDAO.deleteClassification(id);
    }

    @Override
    public int updateClassification(Classification classification) {
        return classificationDAO.updateClassification(classification);
    }

    @Override
    public List<Classification> getClaList() {
        return classificationDAO.getClaList();
    }

    @Override
    public Classification getClaById(int claId) {
        return classificationDAO.getClaById(claId);
    }

    @Override
    public List<Map<String, Object>> findAll(int pageNum, int pageSize) throws Exception {
        PageHelper.startPage(pageNum,pageSize);
        return classificationDAO.findAll();
    }
}
