package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateUtil {
    private static SessionFactory sessionFactory;

    public static SessionFactory getSessionFactory() {


        if (sessionFactory == null) {
            Configuration configuration = new Configuration();
            configuration.configure("hibernate.cfg.xml");
            SessionFactory sessionFactory = configuration.buildSessionFactory();
        }

        return sessionFactory;
    }
    public void closeFactory(){
        if(sessionFactory.isOpen()){
            sessionFactory.close();
        }
    }
}
