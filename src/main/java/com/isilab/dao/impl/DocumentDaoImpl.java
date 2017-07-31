package com.isilab.dao.impl;

import com.isilab.dao.DocumentDao;
import com.isilab.entity.DocumentEntity;
import org.springframework.stereotype.Repository;

/**
 * Created by Simrit on 2017/7/31.
 */
@Repository("documentDao")
public class DocumentDaoImpl extends BaseDaoImpl<DocumentEntity> implements DocumentDao {
}
