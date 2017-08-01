package com.isilab.biz;

import com.isilab.entity.UserEntity;

/**
 * Created by Simrit on 2017/8/1.
 */
public interface UserBiz {

    UserEntity getUser(String usn);
}
