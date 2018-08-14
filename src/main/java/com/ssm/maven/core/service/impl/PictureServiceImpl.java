package com.ssm.maven.core.service.impl;

import com.github.pagehelper.PageHelper;
import com.ssm.maven.core.dao.PictureDAO;
import com.ssm.maven.core.pojo.Picture;
import com.ssm.maven.core.service.PictureService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("pictureService")
public class PictureServiceImpl implements PictureService {

    @Resource
    private PictureDAO pictureDAO;

    @Override
    public List<Picture> getPictureList() {
        return pictureDAO.getPictureList();
    }

    @Override
    public int savePicture(Picture picture) {
        return pictureDAO.savePicture(picture);
    }

    @Override
    public int deletePicture(int pictureId) {
        return pictureDAO.deletePicture(pictureId);
    }

    @Override
    public int updatePicture(Picture picture) {
        return pictureDAO.updatePicture(picture);
    }

    @Override
    public Picture getPictureByItemId(String itemId) {
        return pictureDAO.getPictureByItemId(itemId);
    }

    @Override
    public List<Map<String, Object>> getPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return pictureDAO.getPage();
    }
}
