package com.isilab.dao.impl;

import com.isilab.dao.BaseDao;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;


import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by Simrit on 2017/7/28.
 */
@SuppressWarnings("unchecked")
public class BaseDaoImpl<T> implements BaseDao<T> {
    @Autowired
    SessionFactory sessionFactory;

    //获取T真实类
    @SuppressWarnings("rawtypes")
    private Class cls;

    public BaseDaoImpl() {
        this.cls = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }

    public T get(Serializable id) {
        return (T) getSession().get(cls, id);
    }

    public void save(T obj) {
        getSession().save(obj);
    }

    public void update(T obj) {
        getSession().update(obj);
    }

    public void delete(T obj) {
        getSession().delete(obj);
    }

    public List<T> getAll() {
        String hql = "from " + cls.getName()+" c"+" order by c.date DESC";
        Query<T> query = getSession().createQuery(hql);
        List<T> list = query.list();
        return list;
    }

    public List<T> getLatest(int number) {
        //from后一定要加空格
        String hql = "from " + cls.getName()+" c"+" order by c.date DESC";
        Query<T> query = getSession().createQuery(hql);
        query.setMaxResults(number);
        List<T> list = query.list();
        return list;
//        Criteria criteria=sessionFactory.getCurrentSession().createCriteria(cls.getName());
//        criteria.setMaxResults(3);
//        return  criteria.list();
    }

    //page:当前页，pagesize:每页条数
    public List<T> pagedByHql(int page) {
        String hql = "from " + cls.getName()+" c"+" order by c.date DESC";
        Query<T> query = getSession().createQuery(hql);
        query.setFirstResult((page - 1) * 20);
        query.setMaxResults(20);
        List<T> list = query.list();
        return list;
    }

    public long count() {
        try {
            String sql = "select count(*) from " + cls.getName();
            Query<T> query = getSession().createQuery(sql);
            return Integer.parseInt(query.getResultList().get(0).toString());
        } catch (Exception e) {
            return -1;
        }
    }

    public List<T> findBySql(String sql, String[] variables,
                             Serializable... values) {
        Query<T> query = getSession().createQuery(sql);
        if(variables != null){
            for(int i = 0 ; i < variables.length ; i ++){
                query.setParameter(variables[i], values[i]);
            }
        }

        List<T> temp = (List<T>)(query
                .stream()
                .collect(Collectors.toList()));

        return temp;
    }

    public T getByParameter(String paraName, Serializable para, String symbol) {
        //String sql = "from " + cls.getName() + " where " + paraName + "=:" + paraName;
        String sql = "from " + cls.getName() + " where " + paraName + symbol + ":" + paraName;
        String[] variables = {paraName};
        Serializable[] paras = {para};
        List<T> objList = this.findBySql(sql, variables, paras);
        if (objList != null && objList.size() > 0) {
            return objList.get(0);
        } else {
            return null;
        }
    }

    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }
}
