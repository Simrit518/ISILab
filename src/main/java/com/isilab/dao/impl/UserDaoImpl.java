package com.isilab.dao.impl;

import com.isilab.dao.UserDao;
import com.isilab.entity.UserEntity;
import org.springframework.stereotype.Repository;

/**
 * Created by Simrit on 2017/8/1.
 */
@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<UserEntity> implements UserDao {
}
