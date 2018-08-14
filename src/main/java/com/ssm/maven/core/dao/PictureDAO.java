package com.ssm.maven.core.dao;

import com.ssm.maven.core.pojo.Picture;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface PictureDAO {

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
    int savePicture(@Param("picture") Picture picture);

    /**
     * 删除图片
     *
     * @param pictureId
     * @return
     */
    int deletePicture(@Param("pictureId") int pictureId);

    /**
     * 修改图片信息
     *
     * @param picture
     * @return
     */
    int updatePicture(@Param("picture") Picture picture);

    /**
     * 根据商品Id获取相应的图片
     *
     * @param itemId
     * @return
     */
    Picture getPictureByItemId(@Param("itemId") String itemId);

    /**
     * 获取分页
     * @return
     */
    List<Map<String,Object>> getPage();
}
