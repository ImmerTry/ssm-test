package com.ssm.maven.core.dao;

import com.ssm.maven.core.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDAO {
    /**
     * 查找用户
     * @param user
     * @return 用户
     */
    User getUser(@Param("user") User user);

    /**
     * 添加用户
     * @param user
     * @return
     */
    int addUser(@Param("user") User user);
}
