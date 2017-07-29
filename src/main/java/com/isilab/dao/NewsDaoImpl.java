package com.isilab.dao;

import com.isilab.entity.NewsEntity;
import org.springframework.stereotype.Repository;

/**
 * Created by Simrit on 2017/7/28.
 */
@Repository("newsDao")
public class NewsDaoImpl extends BaseDaoImpl<NewsEntity> implements NewsDao {
}
