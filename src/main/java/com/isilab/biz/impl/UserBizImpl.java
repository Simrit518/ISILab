package com.isilab.biz.impl;

import com.isilab.biz.UserBiz;
import com.isilab.dao.UserDao;
import com.isilab.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Simrit on 2017/8/1.
 */
@Service("userService")
@Transactional
public class UserBizImpl implements UserBiz{
    @Autowired
    private UserDao userDao;

    @Transactional
    public UserEntity getUser(String usn) {
        return userDao.getByParameter("username", usn.trim(), "=");
    }

}
