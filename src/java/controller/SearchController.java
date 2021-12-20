/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.NewsDAO;
import entity.News;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hieu Mau
 */
public class SearchController extends HttpServlet {

    String temp = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
            /* TODO output your page here. You may use following sample code. */

            NewsDAO newsDB = new NewsDAO();

            News recentNews = newsDB.getRecentNews();
            request.setAttribute("recent", recentNews);

            List<News> top5 = newsDB.getTop5News();
            request.setAttribute("top5", top5);

            String txtSearch = request.getParameter("txtSearch");
            if (txtSearch != null) {
                temp = txtSearch;
            } else {
                txtSearch = temp;
            }

            String pageIndex = request.getParameter("index");
            if (pageIndex == null) {
                pageIndex = "1";
            }
            int index = Integer.parseInt(pageIndex);
            int total = newsDB.countFoundNews(txtSearch);
            int pageSize = 3;
            int maxPage = total / pageSize;
            if (total % pageSize != 0) {
                maxPage++;
            }
            if (index > 0 && index <= maxPage) {
                List<News> list = newsDB.searchByTitle(txtSearch, index, pageSize);
                for(News news : list){
                    news.setTitle(newsDB.formatHighlightSearchWord(news.getTitle(), txtSearch));
                }

                request.setAttribute("list", list);
                request.setAttribute("maxPage", maxPage);
                request.setAttribute("index", index);
                request.setAttribute("message", "AMOUNT OF SEARCHED: " + total);
                request.getRequestDispatcher("view/Search.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("view/NotFound.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            Logger.getLogger(SearchController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
