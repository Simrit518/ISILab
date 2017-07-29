package com.isilab.dao;

import com.isilab.entity.NewsEntity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

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
    public BaseDaoImpl(){
        this.cls=(Class<T>)((ParameterizedType)this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }
    public void save(T obj){
        getSession().save(obj);
    }
    public void update(T obj){
        getSession().update(obj);
    }
    public void delete(T obj){
        getSession().delete(obj);
    }
    public List<T> getAll(){
//        String hql="from"+cls.getName();
//        Query<T> query=getSession().createQuery(hql);
//        List<T> temp = (List<T>)(query
//                .stream()
//                .collect(Collectors.toList()));
//
//        return temp;
        Criteria criteria=sessionFactory.getCurrentSession().createCriteria(cls);
        return criteria.list();
    }
    public List<T> getLatest(){
//        String hql="from"+cls.getName();
//        Query<T> query=getSession().createQuery(hql);
//        query.setMaxResults(3);
//        List<T> list=query.list();
//        return list;
        Criteria criteria=sessionFactory.getCurrentSession().createCriteria(cls.getName());
        criteria.setMaxResults(3);
        return  criteria.list();
    }
    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }
}
