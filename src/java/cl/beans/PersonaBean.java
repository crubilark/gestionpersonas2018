/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.beans;

import cl.model.Persona;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Singleton;

/**
 *
 * @author alumnossur
 */
@Singleton
public class PersonaBean implements PersonaBeanLocal {
    
    private List<Persona> list=new ArrayList<>();
    
    public PersonaBean(){
      list.add(new Persona("1-1","Claudio","Administrador","claudio@gmail.com","123",true));
      list.add(new Persona("1-2","Dario","Persona","dario@gmail.com","123",true));
      list.add(new Persona("1-3","Juan","Administrador","juanp@gmail.com","123",true));
    
    }
    

    @Override
    public Persona buscar(String rut) {
        for(Persona persona : list){
        if(persona.getRut().equals(rut)){
            return persona;
        }
        }
        return null;
    }

    @Override
    public Persona loguear(String rut, String clave) {
      for(Persona persona : list){
        if(persona.getRut().equals(rut)&& persona.getClave().equals(clave) && persona.isActivo()){
            return persona;
        }
        }
        return null;
        
        
    }

    @Override
    public void editar(String rut, boolean activo) {
      Persona person = buscar(rut);
      person.setActivo(activo);
        
        
    }

    @Override
    public List<Persona> getPersonaList() {
        return list;
        
       
    }

    @Override
    public String add(Persona person) {
      Persona p = buscar(person.getRut());
       if(p == null){
        list.add(person);
        return "persona creada con exito";
       }
         return "rut ya se encuentra registrado";
        
    }

  

    
    
    
    
    
}
