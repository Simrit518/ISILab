package com.isilab.dao;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Simrit on 2017/7/28.
 */
public interface BaseDao<T> {
    public T get(Serializable id);
    public void save(T obj);
    public void update(T obj);
    public void delete(T obj);
    public List<T> getAll();
    public List<T> getLatest(int number);
    public List<T> pagedByHql(int page);
    public long count();
    public List<T> findBySql(String sql, String [] variables, Serializable...values);
    public T getByParameter(String paraName, Serializable para, String symbol);
}
