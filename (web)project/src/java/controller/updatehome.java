/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.homeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Home;

/**
 *
 * @author HaNoi
 */
public class updatehome extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updatehome</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updatehome at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String home = request.getParameter("home_id");
        String accout_id = request.getParameter("idac");
        String ima = request.getParameter("image_1");
        String ima2 = request.getParameter("image_2");
        String ima3 = request.getParameter("image_3");
        
        String[] parts4 = ima.split("/");
        String i1 = "https://drive.google.com/uc?id=" + parts4[5]; 
        
        String[] parts5 = ima2.split("/");
        String i2 = "https://drive.google.com/uc?id=" + parts5[5];
        
                String[] parts6 = ima3.split("/");
        String i3 = "https://drive.google.com/uc?id=" + parts6[5];

        String price = request.getParameter("home_price");
        double pr = Double.parseDouble(price);
        String mota = request.getParameter("product_description");
        String status = request.getParameter("status");
        String date = request.getParameter("date");
        homeDAO hdl = new homeDAO();
        Home a = new Home(home, accout_id, i1, i2, i3, pr, mota, status, date);
        hdl.updatehome(a);
        response.sendRedirect("view/deletehome.jsp");
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
