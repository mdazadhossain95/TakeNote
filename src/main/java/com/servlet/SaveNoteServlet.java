package com.servlet;

import com.entities.takenote;
import com.helper.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;


@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String title = request.getParameter("title");
            String content = request.getParameter("content");
            takenote takenote = new takenote(title, content, new Date());

            Configuration configuration = new Configuration();
            configuration.configure("hibernate.cfg.xml");
            SessionFactory sessionFactory = configuration.buildSessionFactory();
            Session session = sessionFactory.openSession();

            Transaction transaction = session.beginTransaction();
            session.save(takenote);
            transaction.commit();
            session.close();

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.print("<h1 style='text-align:center;'>Note is added Successfully</h1>");
            out.print("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all Notes</a></h1>");


        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
