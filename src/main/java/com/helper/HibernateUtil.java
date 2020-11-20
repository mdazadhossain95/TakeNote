package com.helper;

//import org.hibernate.SessionFactory;
//import org.hibernate.boot.Metadata;
//import org.hibernate.boot.MetadataSources;
//import org.hibernate.boot.registry.StandardServiceRegistry;
//import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
//
//public class HibernateUtil {
//    public static SessionFactory sessionFactory;
//
//    public static SessionFactory getFactory() {
//        if (sessionFactory == null) {
//            StandardServiceRegistry standardRegistry = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
//            Metadata metaData = new MetadataSources(standardRegistry).getMetadataBuilder().build();
//            sessionFactory = metaData.getSessionFactoryBuilder().build();
//
//        }
//        return sessionFactory;
//    }
//
//    public static SessionFactory getSessionFactory() {
//        return sessionFactory;
//    }
//
//    public void closeFactory() {
//        if (sessionFactory.isOpen()) {
//            sessionFactory.close();
//        }
//    }
//
//}

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.SessionFactoryBuilder;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;

public class HibernateUtil {
    private static SessionFactory sessionFactory;

    public static SessionFactory getFactory() {
        StandardServiceRegistry standardRegistry = new StandardServiceRegistryBuilder().
                configure("hibernate.cfg.xml").build();

        Metadata metadata = new MetadataSources(standardRegistry).getMetadataBuilder().
                build();

        SessionFactoryBuilder sessionFactoryBuilder = metadata.getSessionFactoryBuilder();


        return sessionFactoryBuilder.build();
    }

    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            sessionFactory = getFactory();
        }
        return sessionFactory;
    }
}
