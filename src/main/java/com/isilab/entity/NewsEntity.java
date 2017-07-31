package com.isilab.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Simrit on 2017/7/28.
 */
@Entity
@Table(name = "news")
public class NewsEntity  {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "title")
    private String title;
    @Column(name = "content")
    private String content;
    @Column(name = "date")
    private Date date;
    @Column(name = "summary")
    private String summary;
    @Column(name = "kind")
    private String kind;

    public NewsEntity(){
    }
    public NewsEntity(String title,String content,Date date,String summary,String kind){
        this.title=title;
        this.content=content;
        this.date=date;
        this.summary=summary;
        this.kind=kind;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }
}
