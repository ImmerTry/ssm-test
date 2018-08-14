package com.ssm.maven.core.service;


import com.ssm.maven.core.pojo.Picture;

import java.util.List;
import java.util.Map;

public interface PictureService {

    /**
     * 查找所有图片信息
     *
     * @return
     */
    List<Picture> getPictureList();

    /**
     * 保存图片信息
     *
     * @param picture
     * @return
     */
    int savePicture(Picture picture);

    /**
     * 删除图片
     *
     * @param pictureId
     * @return
     */
    int deletePicture(int pictureId);

    /**
     * 修改图片信息
     *
     * @param picture
     * @return
     */
    int updatePicture(Picture picture);

    /**
     * 根据商品Id获取相应的图片
     *
     * @param itemId
     * @return
     */
    Picture getPictureByItemId(String itemId);

    /**
     * 填充获取分页
     * @param pageNum
     * @param pageSize
     * @return
     */
    List<Map<String,Object>> getPage(int pageNum, int pageSize);

}
