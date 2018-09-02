package com.ssm.maven.core.dao;

import com.ssm.maven.core.pojo.TOrderSend;
import com.ssm.maven.core.pojo.TOrderSendExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TOrderSendMapper {
    long countByExample(TOrderSendExample example);

    int deleteByExample(TOrderSendExample example);

    int deleteByPrimaryKey(String orderid);

    int insert(TOrderSend record);

    int insertSelective(TOrderSend record);

    List<TOrderSend> selectByExample(TOrderSendExample example);

    TOrderSend selectByPrimaryKey(String orderid);

    int updateByExampleSelective(@Param("record") TOrderSend record, @Param("example") TOrderSendExample example);

    int updateByExample(@Param("record") TOrderSend record, @Param("example") TOrderSendExample example);

    int updateByPrimaryKeySelective(TOrderSend record);

    int updateByPrimaryKey(TOrderSend record);
}