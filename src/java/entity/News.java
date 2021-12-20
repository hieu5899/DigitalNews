/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author Hieu Mau
 */
public class News {

    /**
     * Store id.
     */
    private int id;
    /**
     * Store title.
     */
    private String title;
    /**
     * Store description.
     */
    private String description;
    /**
     * Store shortDes.
     */
    private String shortDes;
    /**
     * Store image.
     */
    private String image;
    /**
     * Store writer.
     */
    private String writer;
    /**
     * Store publishDate.
     */
    private Date publishDate;

    /**
     * Constructor
     *
     * @param id
     * @param title
     * @param description
     * @param shortDes
     * @param image
     * @param writer
     * @param publishDate
     */
    public News(int id, String title, String description, String shortDes, String image, String writer, Date publishDate) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.shortDes = shortDes;
        this.image = image;
        this.writer = writer;
        this.publishDate = publishDate;
    }

    /**
     * Get id
     *
     * @return the id.
     */
    public int getId() {
        return id;
    }

    /**
     * Get getTitle
     *
     * @return the getTitle.
     */
    public String getTitle() {
        return title;
    }

    /**
     * Get getDescription
     *
     * @return the getDescription.
     */
    public String getDescription() {
        return description;
    }

    /**
     * Get getShortDes
     *
     * @return the getShortDes.
     */
    public String getShortDes() {
        return shortDes;
    }

    /**
     * Get getImage
     *
     * @return the getImage.
     */
    public String getImage() {
        return image;
    }

    /**
     * Get getWriter
     *
     * @return the getWriter.
     */
    public String getWriter() {
        return writer;
    }

    /**
     * getPublishDate
     *
     * @return the getPublishDate.
     */
    public Date getPublishDate() {
        return publishDate;
    }

    /**
     * getPublishDate
     *
     * Change format date
     *
     * @return date
     *
     */
    public String getDateConvert() {
        SimpleDateFormat dateFormat1 = new SimpleDateFormat("MMM dd yyyy - hh:mm:");
        SimpleDateFormat dateFormat2 = new SimpleDateFormat("a");
        String date = dateFormat1.format(this.publishDate) + dateFormat2.format(this.publishDate).toLowerCase();
        return date;
    }

    /**
     * Set title
     * @param title 
     */
    public void setTitle(String title) {
        this.title = title;
    }
}
