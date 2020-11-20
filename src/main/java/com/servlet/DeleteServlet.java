package com.servlet;


import com.entities.takenote;
import com.helper.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            Session session = HibernateUtil.getFactory().openSession();
            Transaction tx = session.beginTransaction();


            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("id is working");
            takenote takenote = session.get(takenote.class, id);

            session.delete(takenote);
            System.out.println("deleted");
            tx.commit();
            System.out.println("commit done");
            session.close();


//            response.setContentType("text/html");
//            PrintWriter out = response.getWriter();
//            out.print("<h1 style='text-align:center;'>Note is deleted Successfully</h1>");
//            out.print("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all Notes</a></h1>");


            response.sendRedirect("all_notes.jsp");


        } catch (Exception e) {
            //Nothing
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
