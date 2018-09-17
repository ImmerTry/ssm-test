package com.ssm.maven.core.dao;

import com.ssm.maven.core.pojo.TOrder;
import com.ssm.maven.core.pojo.TOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TOrderMapper {
    long countByExample(TOrderExample example);

    int deleteByExample(TOrderExample example);

    int deleteByPrimaryKey(String orderid);

    int insert(TOrder record);

    int insertSelective(TOrder record);

    List<TOrder> selectByExample(TOrderExample example);

    TOrder selectByPrimaryKey(String orderid);

    int updateByExampleSelective(@Param("record") TOrder record, @Param("example") TOrderExample example);

    int updateByExample(@Param("record") TOrder record, @Param("example") TOrderExample example);

    int updateByPrimaryKeySelective(TOrder record);

    int updateByPrimaryKey(TOrder record);
}