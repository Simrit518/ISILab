package com.isilab.dao;

import java.util.List;

/**
 * Created by Simrit on 2017/7/28.
 */
public interface BaseDao<T> {
    public void save(T obj);
    public void update(T obj);
    public void delete(T obj);
    public List<T> getAll();
    public List<T> getLatest();
}
