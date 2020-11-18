package com.helper;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;


//public class HibernateUtil {
//    private static SessionFactory sessionFactory = null;
//
//    public static SessionFactory getFactory() {
//        if (sessionFactory == null) {
//            try {
//                Configuration configuration = new Configuration();
//                configuration.configure();
//                sessionFactory = configuration.buildSessionFactory();
//            } catch (Throwable ex) {
//                throw new ExceptionInInitializerError(ex);
//            }
//        }
//        return sessionFactory;
//    }
//}


public class HibernateUtil {
    public static SessionFactory sessionFactory;

    public static SessionFactory getFactory() {
        if (sessionFactory == null) {
            StandardServiceRegistry standardRegistry = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
            Metadata metaData = new MetadataSources(standardRegistry).getMetadataBuilder().build();
            sessionFactory = metaData.getSessionFactoryBuilder().build();



        }
        return sessionFactory;
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

//        }
//        try {
//            Configuration configuration = new Configuration();
//            configuration.configure("hibernate.cfg.xml");
//            try (SessionFactory sessionFactory = configuration.buildSessionFactory()) {
//                System.out.println("done from Hibenateutil");
//            }
//
//        } catch (HibernateException e) {
//            e.printStackTrace();
//        }
//        return sessionFactory;
//    }

    public void closeFactory() {
        if (sessionFactory.isOpen()) {
            sessionFactory.close();
        }
    }

}
