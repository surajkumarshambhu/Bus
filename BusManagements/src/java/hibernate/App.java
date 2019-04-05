/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernate;

import java.util.Iterator;
import java.util.List;
import javaclass.Bus;
import javaclass.Login;
import javaclass.Routes;
import javaclass.valuebeen;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 *
 * @author Suraj Kumar
 */
public class App {
     public int checkLogin(String UserId,String Password){
    //public static void main(String args[]){
         Login obj = new Login();
         Configuration con = new Configuration().configure ().addAnnotatedClass(Login.class);
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
        
       // Query qr = session.createQuery("from Login l where l.UserId = '"+"1611981410"+"' and l.Password = '"+"qwe"+"'");
      
         Query qr = session.createQuery("from Login l where l.Userid = '"+UserId+"' and l.Password = '"+Password+"'");

        
         List list = qr.list();
        
         Login l = (Login)list.iterator().next();
        
        if(list.size() == 1){
          String type = l.getUsertype();
             if(type.equals("Admin")){
                 return 1;
             }
              if(type.equals("Faculties")){
                 return 2;
             }
             if(type.equals("Student")){
                 return 3;
             }
         }
//        for(Iterator it = l.iterator();it.hasNext();){
//           Login l1 = (Login) it.next();
//           
//        }
        tx.commit();
        session.close();  
        return 0;
    }
     
    public List fetch_faculty(){
        Login f = new Login();
        Configuration con = new Configuration().configure ().addAnnotatedClass(Login.class);
         
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
         
         Query q = session.createQuery("from Login l where l.Usertype = '"+"Faculty"+"'");
         
         List l = q.list();
         
         tx.commit();
         session.close(); 
         
         return l;
    }
      public void addfaculties(String Userid,String Username,String Usertype,String Password,String Gender){
         Login f = new Login();
       
         Configuration con = new Configuration().configure ().addAnnotatedClass(Login.class);
         
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
       
          f.setUserid(Userid);
          f.setUsername(Username);
          f.setUsertype(Usertype);
          f.setPassword(Password);
          f.setGender(Gender);
         
          session.save(f);
          
          tx.commit();
          session.close();      
       
    }
    public List fetch_routes(){
         Routes f = new Routes();
         Configuration con = new Configuration().configure ().addAnnotatedClass(Routes.class);
         
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
         
         Query q = session.createQuery("from Routes");
         
         List l = q.list();
         
         tx.commit();
         session.close(); 
         
         return l;
    }
    
    public void addRoutes(String Routeid,String Busid,String To,String From){
         Routes f = new Routes();
       
         Configuration con = new Configuration().configure ().addAnnotatedClass(Routes.class);
         
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
       
          f.setRouteid(Routeid);
          f.setFromd(From);
          f.setTod(To);
          f.setBusno(Busid);
         
          session.save(f);
          
          tx.commit();
          session.close();      
       
    }
    public void addBuses(String Busid,String Facultyid,String Time,String Status){
         Bus f = new Bus();
       
         Configuration con = new Configuration().configure ().addAnnotatedClass(Bus.class);
         
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
       
          f.setBusid(Busid);
          f.setFacultyid(Facultyid);
          f.setTime(Time);
          f.setStatus(Status);
          
          session.save(f);
          
          tx.commit();
          session.close();      
       
    }
    public List fetch_buses(){
        Bus f = new Bus();
        Configuration con = new Configuration().configure ().addAnnotatedClass(Bus.class);
         
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
         
         Query q = session.createQuery("from Bus");
         
         List l = q.list();
         
         tx.commit();
         session.close(); 
         
         return l;
    }
    
    public List fetch_student(){
        Login f = new Login();
        Configuration con = new Configuration().configure ().addAnnotatedClass(Login.class);
         
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
         
         Query q = session.createQuery("from Login l where l.Usertype = '"+"Student"+"'");
         
         List l = q.list();
         
         tx.commit();
         session.close(); 
         
         return l;
    }
      public void addstudent(String Userid,String Username,String Usertype,String Password,String Gender){
         Login f = new Login();
       
         Configuration con = new Configuration().configure ().addAnnotatedClass(Login.class);
         
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
       
          f.setUserid(Userid);
          f.setUsername(Username);
          f.setUsertype(Usertype);
          f.setPassword(Password);
          f.setGender(Gender);
         
          session.save(f);
          
          tx.commit();
          session.close();      
       
    }
    public static void main(String[] args) {
 
        //Bus f = new Bus();
         Configuration con = new Configuration().configure ().addAnnotatedClass(valuebeen.class);
         
         ServiceRegistry sr = new StandardServiceRegistryBuilder().applySettings(con.getProperties()).build();
        
         SessionFactory sf = con.buildSessionFactory(sr);

         Session session = sf.openSession();

         Transaction tx = session.beginTransaction();
         
         Query q = session.createQuery("from Bus b,Routes r where b.busid = r.busno");
         
         List l = q.list();
         Iterator it = l.iterator();
         
         while(it.hasNext()){
           System.out.println(l);
         }
         
         tx.commit();
         session.close(); 
    }
}
