package com.isilab.dao.impl;

import com.isilab.dao.NewsDao;
import com.isilab.dao.impl.BaseDaoImpl;
import com.isilab.entity.NewsEntity;
import org.springframework.stereotype.Repository;

/**
 * Created by Simrit on 2017/7/28.
 */
@Repository("newsDao")
public class NewsDaoImpl extends BaseDaoImpl<NewsEntity> implements NewsDao {
}
