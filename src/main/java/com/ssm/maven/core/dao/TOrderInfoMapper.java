package com.ssm.maven.core.dao;

import com.ssm.maven.core.pojo.TOrderInfo;
import com.ssm.maven.core.pojo.TOrderInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TOrderInfoMapper {
    long countByExample(TOrderInfoExample example);

    int deleteByExample(TOrderInfoExample example);

    int deleteByPrimaryKey(String id);

    int insert(TOrderInfo record);

    int insertSelective(TOrderInfo record);

    List<TOrderInfo> selectByExample(TOrderInfoExample example);

    TOrderInfo selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TOrderInfo record, @Param("example") TOrderInfoExample example);

    int updateByExample(@Param("record") TOrderInfo record, @Param("example") TOrderInfoExample example);

    int updateByPrimaryKeySelective(TOrderInfo record);

    int updateByPrimaryKey(TOrderInfo record);
}