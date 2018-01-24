/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.web;

import cl.model.Persona;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 *
 * @author alumnossur
 */

//debemos implementar webListener sino no funciona
@WebListener
public class ContextoPersonas implements ServletContextListener{

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        //permite acceder al contexto
       List<Persona> list = new ArrayList();
       list.add(new Persona("12345678-9","Claudio","administrador","docente.crubilar@gmail.com","123",true));
         list.add(new Persona("123","Dario","persona","dario.rubilar@gmail.com","123",true));
          list.add(new Persona("1234","Pedro","persona",".pedro@gmail.com","123",false));
         
        
         //sce actua como objeto y emula un servet
         sce.getServletContext().setAttribute("data",list);
        
        
        
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    }
    
}
