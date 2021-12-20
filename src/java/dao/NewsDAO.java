/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.News;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Hieu Mau
 */
public class NewsDAO extends DBContext {

    /**
     * Call the PreparedStatement
     */
    private PreparedStatement ps;
    /**
     * Call the ResultSet
     */
    private ResultSet rs;

    /**
     * searchbyTitle
     *
     * - if have the least record ( data from database) => return object news
     * else return null ♦ Exception : if the query execute failed => throw
     * exception
     *
     * @param txt
     * @param pageIndex
     * @param pageSize
     * @return
     * @throws java.lang.Exception
     */
    public List<News> searchByTitle(String txt, int pageIndex, int pageSize) throws Exception {
        try {
            List<News> list = new ArrayList<>();
            String query = "select * from(\n"
                    + "select ROW_NUMBER() over (order by ID) as a, *\n"
                    + "from News where title like N\'%" + txt + "%\'\n"
                    + ")as b\n"
                    + "where a between ?*?-?\n"
                    + "and ?*?";
            ps = connection.prepareStatement(query);
            ps.setInt(1, pageIndex);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageSize - 1);
            ps.setInt(4, pageIndex);
            ps.setInt(5, pageSize);
            rs = ps.executeQuery();
            while (rs.next()) {
                News news = new News(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("shortDes"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("publishDate"));
                list.add(news);
            }
            return list;
        } catch (SQLException e) {
            throw e;
        }
    }

    /**
     * getRecentNews:
     *
     * - if have the least record ( data from database) => return object news
     * else return null ♦ Exception : if the query execute failed => throw
     * exception
     *
     * @return
     * @throws java.lang.Exception
     */
    public News getRecentNews() throws Exception {
        try {
            String query = "select top 1 * from News order by publishDate desc";
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                News news = new News(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("shortDes"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("publishDate"));
                return news;
            }
        } catch (SQLException e) {
            throw e;
        }
        return null;
    }

    /**
     * getTop5News:
     *
     * - if have the least record ( data from database) => return object news -
     * else return null ♦ Exception : if the query execute failed => throw
     * exception
     *
     * @return
     * @throws java.lang.Exception
     */
    public List<News> getTop5News() throws Exception {
        try {
            List<News> list = new ArrayList<>();
            String query = "select top 5 * from News order by publishDate desc";
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                News news = new News(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("shortDes"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("publishDate"));
                list.add(news);
            }
            return list;
        } catch (SQLException e) {
            throw e;
        }
    }

    /**
     * getNewsById:
     *
     *
     * - if have the least record ( data from database) => return object news
     * else return null ♦ Exception : if the query execute failed => throw
     * exception
     *
     * @param id
     * @return
     * @throws java.lang.Exception
     */
    public News getNewsById(int id) throws Exception {
        try {
            String query = "select * from News where id = ?";
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                News news = new News(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("shortDes"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("publishDate"));
                return news;
            }
        } catch (SQLException e) {
            throw e;
        }
        return null;
    }

    /**
     * countFoundNews
     *
     * - if have the least record ( data from database) => return object news -
     * else return null ♦ Exception : if the query execute failed => throw
     * exception
     *
     * @param text
     * @return
     * @throws java.lang.Exception
     */
    public int countFoundNews(String text) throws Exception {
        try {
            String query = "select count(*) from News where title like N\'%" + text + "%\'";
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (SQLException e) {
            throw e;
        }
    }

    /**
     * Highlight searched words
     *
     * @param title
     * @param txtSearch
     * @return title with highlight
     */
    public String formatHighlightSearchWord(String title, String txtSearch) {
        int lengthTitle = title.length();
        int lengthSearch = txtSearch.length();

        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < lengthTitle; i++) {
            if (i + lengthSearch <= lengthTitle) {
                if (title.substring(i, i + lengthSearch).equalsIgnoreCase(txtSearch)) {
                    sb.append("<mark>").append(title.substring(i, i + lengthSearch)).append("</mark>");
                    i += lengthSearch - 1;
                } else {
                    sb.append(title.charAt(i));
                }
            } else {
                sb.append(title.substring(i));
                return sb.toString();
            }
        }

        return sb.toString();
    }
}
