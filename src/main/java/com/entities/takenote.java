package com.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.Random;

@Entity
@Table

public class takenote {
    @Id
    private int id;
    private String title;
    @Column(length = 1500)
    private String content;
    private Date addedDate;

    public takenote() {

    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public takenote(String title, String content, Date addedDate) {
        super();
        this.id = new Random().nextInt(10000);
        this.title = title;
        this.content = content;
        this.addedDate = addedDate;
    }

    public void getContent(String content) {

    }
}
