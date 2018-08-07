package com.ssm.maven.core.service.impl;

import com.ssm.maven.core.dao.PictureDAO;
import com.ssm.maven.core.pojo.Picture;
import com.ssm.maven.core.service.PictureService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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
    public int deletePicture(Picture picture) {
        return pictureDAO.deletePicture(picture);
    }

    @Override
    public int updatePicture(Picture picture) {
        return pictureDAO.updatePicture(picture);
    }

    @Override
    public Picture getPictureByItemId(String itemId) {
        return pictureDAO.getPictureByItemId(itemId);
    }
}
